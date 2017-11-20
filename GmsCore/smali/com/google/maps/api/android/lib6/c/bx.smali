.class public final Lcom/google/maps/api/android/lib6/c/bx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/bu;
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/Map;

.field private b:J

.field private final c:Lcom/google/g/a/d;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/google/maps/api/android/lib6/c/bz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/maps/api/android/lib6/c/bx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/google/g/a/d;Lcom/google/maps/api/android/lib6/c/bz;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/bx;->a:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/bx;->d:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/bx;->c:Lcom/google/g/a/d;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/c/bx;->b:J

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/c/bx;->e:Lcom/google/maps/api/android/lib6/c/bz;

    return-void
.end method

.method public static b()Lcom/google/maps/api/android/lib6/c/bu;
    .locals 4

    new-instance v0, Lcom/google/maps/api/android/lib6/c/bx;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/google/g/a/d;

    invoke-direct {v2}, Lcom/google/g/a/d;-><init>()V

    new-instance v3, Lcom/google/maps/api/android/lib6/c/bz;

    invoke-direct {v3}, Lcom/google/maps/api/android/lib6/c/bz;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/c/bx;-><init>(Landroid/os/Handler;Lcom/google/g/a/d;Lcom/google/maps/api/android/lib6/c/bz;)V

    return-object v0
.end method

.method private c()V
    .locals 6

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/c/bx;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bx;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/c/bx;->b:J

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bx;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/by;

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/c/bx;->b:J

    iget-wide v4, v0, Lcom/google/maps/api/android/lib6/c/by;->b:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/c/bx;->b:J

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bx;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bx;->d:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/c/bx;->b:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bx;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/by;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/bx;->e:Lcom/google/maps/api/android/lib6/c/bz;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/c/by;->a:Lcom/google/maps/api/android/lib6/c/bw;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/c/bw;->bS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "c="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/google/maps/api/android/lib6/c/by;->c:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x71

    invoke-static {v3, v2, v0}, Lcom/google/maps/api/android/lib6/b/z;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bx;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bx;->e:Lcom/google/maps/api/android/lib6/c/bz;

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/z;->a()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bx;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/c/bw;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bx;->e:Lcom/google/maps/api/android/lib6/c/bz;

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/c/bw;->bS:Ljava/lang/String;

    const/16 v1, 0x71

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/b/z;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/maps/api/android/lib6/c/bw;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bx;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/by;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/c/by;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/bx;->c:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-direct {v0, p1, v2, v3}, Lcom/google/maps/api/android/lib6/c/by;-><init>(Lcom/google/maps/api/android/lib6/c/bw;J)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/bx;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, v0, Lcom/google/maps/api/android/lib6/c/by;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/maps/api/android/lib6/c/by;->c:I

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/bx;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized run()V
    .locals 8

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/c/bx;->b:J

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bx;->c:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bx;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/fx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/bw;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/bx;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/c/by;

    iget-wide v6, v1, Lcom/google/maps/api/android/lib6/c/by;->b:J

    cmp-long v5, v2, v6

    if-ltz v5, :cond_0

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/c/bx;->e:Lcom/google/maps/api/android/lib6/c/bz;

    iget-object v5, v1, Lcom/google/maps/api/android/lib6/c/by;->a:Lcom/google/maps/api/android/lib6/c/bw;

    iget-object v5, v5, Lcom/google/maps/api/android/lib6/c/bw;->bS:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "c="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/google/maps/api/android/lib6/c/by;->c:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x71

    invoke-static {v6, v5, v1}, Lcom/google/maps/api/android/lib6/b/z;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/bx;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/bx;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method
