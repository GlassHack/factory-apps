.class public final Lcom/google/android/gms/fitness/n/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/fitness/n/ar;

.field final b:Z

.field c:Ljava/util/List;

.field d:Z

.field e:I

.field f:Lcom/google/android/gms/fitness/data/DataPoint;

.field g:Lcom/google/android/gms/fitness/data/DataPoint;

.field private final h:Landroid/os/Handler;

.field private final i:Lcom/google/android/gms/fitness/n/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/n/ar;Landroid/os/Handler;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/n/d;->c:Ljava/util/List;

    .line 41
    iput-boolean v1, p0, Lcom/google/android/gms/fitness/n/d;->d:Z

    .line 43
    iput v1, p0, Lcom/google/android/gms/fitness/n/d;->e:I

    .line 53
    iput-object p1, p0, Lcom/google/android/gms/fitness/n/d;->a:Lcom/google/android/gms/fitness/n/ar;

    .line 54
    iput-object p2, p0, Lcom/google/android/gms/fitness/n/d;->h:Landroid/os/Handler;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/n/d;->b:Z

    .line 56
    new-instance v0, Lcom/google/android/gms/fitness/n/e;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/n/e;-><init>(Lcom/google/android/gms/fitness/n/d;B)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/n/d;->i:Lcom/google/android/gms/fitness/n/e;

    .line 57
    return-void
.end method

.method private static b(Lcom/google/android/gms/fitness/data/DataPoint;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 184
    if-nez p0, :cond_0

    .line 185
    const-string v0, "none"

    .line 193
    :goto_0
    return-object v0

    .line 188
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    const-string v2, "%1$tF %1$tT"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataPoint;->a()[Lcom/google/android/gms/fitness/data/Value;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 191
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/Value;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/d;->f:Lcom/google/android/gms/fitness/data/DataPoint;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/d;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/fitness/n/d;->f:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/fitness/n/d;->f:Lcom/google/android/gms/fitness/data/DataPoint;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/d;->g:Lcom/google/android/gms/fitness/data/DataPoint;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/d;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/fitness/n/d;->g:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/fitness/n/d;->g:Lcom/google/android/gms/fitness/data/DataPoint;

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    :goto_0
    monitor-exit p0

    return-void

    .line 92
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/d;->a:Lcom/google/android/gms/fitness/n/ar;

    iget-object v1, p0, Lcom/google/android/gms/fitness/n/d;->c:Ljava/util/List;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/fitness/n/d;->b:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/fitness/n/ar;->a(Ljava/util/List;Lcom/google/android/gms/fitness/data/Application;Z)Ljava/util/Set;

    .line 94
    const-string v0, "Flushed %d DataPoints in buffer"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/n/d;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/n/d;->c:Ljava/util/List;

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/d;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/fitness/n/d;->i:Lcom/google/android/gms/fitness/n/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/n/d;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/fitness/data/DataPoint;)V
    .locals 3

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    const-string v0, "Buffering %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iput-object p1, p0, Lcom/google/android/gms/fitness/n/d;->f:Lcom/google/android/gms/fitness/data/DataPoint;

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/d;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 69
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/data/k;->l:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iput-object p1, p0, Lcom/google/android/gms/fitness/n/d;->g:Lcom/google/android/gms/fitness/data/DataPoint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 72
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/io/PrintWriter;)V
    .locals 3

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    const-string v0, "DataPointBuffer:\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/n/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 171
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const-string v0, "  oldest: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/fitness/n/d;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-static {v0}, Lcom/google/android/gms/fitness/n/d;->b(Lcom/google/android/gms/fitness/data/DataPoint;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 174
    :cond_0
    const-string v0, "  last location: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/n/d;->g:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-static {v1}, Lcom/google/android/gms/fitness/n/d;->b(Lcom/google/android/gms/fitness/data/DataPoint;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 175
    const-string v0, "  last step count: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/n/d;->f:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-static {v1}, Lcom/google/android/gms/fitness/n/d;->b(Lcom/google/android/gms/fitness/data/DataPoint;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 178
    const-string v0, "Background Handler:\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/d;->h:Landroid/os/Handler;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v2, "  "

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()V
    .locals 6

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/n/d;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    monitor-exit p0

    return-void

    .line 107
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/n/d;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/fitness/n/d;->i:Lcom/google/android/gms/fitness/n/e;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->S:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/n/d;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 110
    :cond_1
    :try_start_2
    const-string v0, "Handler rejected the flush runnable"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "mBuffer"

    iget-object v2, p0, Lcom/google/android/gms/fitness/n/d;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "mLastStepCountCumulative"

    iget-object v2, p0, Lcom/google/android/gms/fitness/n/d;->f:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "mLastLocation"

    iget-object v2, p0, Lcom/google/android/gms/fitness/n/d;->g:Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "mPendingFlush"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/n/d;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
