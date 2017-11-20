.class public final Lcom/google/maps/api/android/lib6/gmm6/j/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/j/e;


# instance fields
.field private final b:Ljava/lang/Object;

.field private c:Z

.field private d:Z

.field private volatile e:Lcom/google/maps/api/android/lib6/gmm6/j/e;

.field private volatile f:Lcom/google/maps/api/android/lib6/gmm6/j/e;

.field private final g:Ljava/util/List;

.field private final h:Lcom/google/maps/api/android/lib6/gmm6/j/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->g:Ljava/util/List;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/j/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->h:Lcom/google/maps/api/android/lib6/gmm6/j/i;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/g;->a()Z

    return-void
.end method

.method private a()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->d:Z

    if-eqz v3, :cond_1

    monitor-exit v4

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->c:Z

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/n/l;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->c:Z

    move v3, v1

    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/n/l;->a()Lcom/google/maps/api/android/lib6/gmm6/n/j;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/maps/api/android/lib6/gmm6/n/j;->d:Z

    if-eqz v3, :cond_6

    move v4, v0

    :goto_2
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->h:Lcom/google/maps/api/android/lib6/gmm6/j/i;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/i;->a()Lcom/google/maps/api/android/lib6/gmm6/j/e;

    move-result-object v0

    move-object v3, v0

    :goto_3
    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->h:Lcom/google/maps/api/android/lib6/gmm6/j/i;

    const-string v2, "/new.building.list"

    invoke-interface {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/j/i;->a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/j/e;

    move-result-object v0

    :goto_4
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->h:Lcom/google/maps/api/android/lib6/gmm6/j/i;

    const-string v2, "/building.list"

    invoke-interface {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/j/i;->a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/j/e;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->f:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->e:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->b:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->d:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/f;

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/g;->c(Lcom/google/maps/api/android/lib6/gmm6/j/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_4

    :cond_5
    move-object v3, v2

    goto :goto_3

    :cond_6
    move v4, v1

    move v0, v1

    goto :goto_2

    :cond_7
    move v3, v0

    goto :goto_1
.end method

.method private c(Lcom/google/maps/api/android/lib6/gmm6/j/f;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->f:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->f:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/e;->a(Lcom/google/maps/api/android/lib6/gmm6/j/f;)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->e:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->e:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/e;->a(Lcom/google/maps/api/android/lib6/gmm6/j/f;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Ljava/util/Collection;
    .locals 5

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/j/e;->a:Ljava/util/Collection;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/c/c/eo;->v_()Lcom/google/c/c/eo;

    move-result-object v0

    invoke-static {}, Lcom/google/c/c/eo;->v_()Lcom/google/c/c/eo;

    move-result-object v2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->f:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->f:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Ljava/util/Collection;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->e:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->e:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Ljava/util/Collection;

    move-result-object v0

    move-object v2, v0

    :cond_1
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/j/e;->a:Ljava/util/Collection;

    if-eq v1, v0, :cond_2

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/j/e;->a:Ljava/util/Collection;

    if-ne v2, v0, :cond_3

    :cond_2
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/j/e;->a:Ljava/util/Collection;

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/c/c/eo;->v_()Lcom/google/c/c/eo;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/a;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lcom/google/c/c/fx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/a;

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    move-object v0, v1

    goto :goto_0

    :cond_8
    move-object v1, v0

    goto :goto_1
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/j/f;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/g;->a()Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    monitor-exit v1

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/g;->c(Lcom/google/maps/api/android/lib6/gmm6/j/f;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/a/a/a;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/g;->a()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->f:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->f:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/e;->a(Lcom/google/maps/api/android/lib6/a/a/a;)Z

    move-result v0

    :cond_2
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->e:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->e:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/e;->a(Lcom/google/maps/api/android/lib6/a/a/a;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/j/f;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/g;->a()Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->f:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->f:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/e;->b(Lcom/google/maps/api/android/lib6/gmm6/j/f;)V

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->e:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/g;->e:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/e;->b(Lcom/google/maps/api/android/lib6/gmm6/j/f;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
