.class final Lcom/google/maps/api/android/lib6/gmm6/m/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/m/a/d;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)V

    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/m/c/c;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->d(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Lcom/google/g/a/d;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-static {v0, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;)Z

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->e(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_2

    iget-boolean v1, p1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->b:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->e(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->f(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)I

    :goto_1
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->j()Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->e(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->g(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->g(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->e(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->h(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-boolean v4, p1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->b:Z

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v5}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->i(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/l/ah;ZLcom/google/maps/api/android/lib6/gmm6/m/a/d;)V

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/m/c/c;Z)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->g(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c/c;Z)Lcom/google/maps/api/android/lib6/gmm6/m/c/c;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c/c;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->j()Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/y;->d:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->g(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->j(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Lcom/google/maps/api/android/lib6/gmm6/m/c/c;

    move-result-object v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->k(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Lcom/google/maps/api/android/lib6/gmm6/m/c/c;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c/c;Z)V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->e(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-nez v0, :cond_2

    const-string v0, "TileFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received an unknown tile "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->g(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    move-result-object v5

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;

    invoke-virtual {v5, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c/c;)Z

    move-result v1

    if-nez v1, :cond_5

    move-object v1, v2

    move v2, v3

    :goto_1
    move v6, v3

    move v3, v4

    move v4, v6

    move v7, v2

    move-object v2, v1

    move v1, v7

    :goto_2
    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->e(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->f(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)I

    :cond_3
    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;

    invoke-direct {p0, v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c/c;Z)V

    :cond_4
    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v0, p1, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    if-ne p2, v1, :cond_6

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;

    iget-boolean v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->b:Z

    move-object v6, v2

    move v2, v4

    move v4, v1

    move-object v1, v6

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;->a:Lcom/google/maps/api/android/lib6/gmm6/m/c/d;

    invoke-static {v1, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->j()Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v2

    if-eq v1, v2, :cond_7

    move-object v2, v1

    move v3, v4

    move v1, v4

    goto :goto_2

    :cond_7
    move v2, v4

    goto :goto_1
.end method
