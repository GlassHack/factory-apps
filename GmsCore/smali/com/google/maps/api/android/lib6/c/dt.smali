.class final Lcom/google/maps/api/android/lib6/c/dt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/dr;


# instance fields
.field final a:Ljava/lang/String;

.field b:J

.field private final c:Lcom/google/g/a/d;

.field private final d:Ljava/util/Map;

.field private final e:Z

.field private f:Z

.field private g:Z


# direct methods
.method constructor <init>(Lcom/google/g/a/d;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/dt;->d:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/dt;->c:Lcom/google/g/a/d;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/dt;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/maps/api/android/lib6/c/dt;->e:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/c/ds;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/dt;->f:Z

    const-string v1, "Action with name %s not started"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/c/dt;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/c/a/cj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/c/ds;

    invoke-direct {v0, p1}, Lcom/google/maps/api/android/lib6/c/ds;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/dt;->c:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/maps/api/android/lib6/c/ds;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/c/dt;->f:Z

    if-nez v2, :cond_0

    :goto_0
    const-string v1, "Action with name %s already started"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/c/dt;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dt;->c:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/c/dt;->b:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/dt;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/c/ds;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/c/dt;->f:Z

    const-string v3, "Action with name %s not started"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/c/dt;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/c/a/cj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/dt;->d:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/c/ds;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1

    :goto_0
    const-string v1, "This event with name %s already ended"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/maps/api/android/lib6/c/ds;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/c/a/cj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/dt;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dt;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/c/ds;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dt;->c:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/maps/api/android/lib6/c/ds;->c:J

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dt;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/c/ds;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/c/dt;->f:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/c/dt;->g:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/cj;->b(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/dt;->g:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dt;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/fx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/dt;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/c/dt;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Lcom/google/maps/api/android/lib6/c/du;

    invoke-direct {v1, p0, v0}, Lcom/google/maps/api/android/lib6/c/du;-><init>(Lcom/google/maps/api/android/lib6/c/dt;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/c/du;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
