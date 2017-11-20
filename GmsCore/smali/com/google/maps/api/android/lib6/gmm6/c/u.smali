.class public final Lcom/google/maps/api/android/lib6/gmm6/c/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/ao;
.implements Lcom/google/maps/api/android/lib6/gmm6/c/r;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/c/an;

.field private b:Lcom/google/maps/api/android/lib6/gmm6/l/l;

.field private c:Ljava/util/List;

.field private d:Lcom/google/maps/api/android/lib6/gmm6/o/bw;

.field private e:F

.field private f:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

.field private g:Lcom/google/maps/api/android/lib6/gmm6/o/t;

.field private final h:Lcom/google/maps/api/android/lib6/gmm6/c/s;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/c/s;Lcom/google/maps/api/android/lib6/c/an;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->h:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->a:Lcom/google/maps/api/android/lib6/c/an;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/u;->a(I)V

    return-void
.end method

.method private static a(Ljava/util/List;)Lcom/google/maps/api/android/lib6/gmm6/l/l;
    .locals 3

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/n;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/n;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->b(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->d()Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->c(I)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->f()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->h()Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->h:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->h:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->a(Lcom/google/maps/api/android/lib6/gmm6/c/r;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->h:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->b()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(I)V
    .locals 6

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/an;->m()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/u;->a(Ljava/util/List;)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->b:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/an;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/u;->a(Ljava/util/List;)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/bw;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->b:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/c/an;->o()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v4}, Lcom/google/maps/api/android/lib6/c/an;->p()I

    move-result v4

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v5}, Lcom/google/maps/api/android/lib6/c/an;->q()I

    move-result v5

    invoke-static {v5}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/l;Ljava/util/List;III)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->d:Lcom/google/maps/api/android/lib6/gmm6/o/bw;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->g:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->d:Lcom/google/maps/api/android/lib6/gmm6/o/bw;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->g:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/t;)V

    :cond_1
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->d:Lcom/google/maps/api/android/lib6/gmm6/o/bw;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/c/an;->q()I

    move-result v1

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->c(I)V

    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->d:Lcom/google/maps/api/android/lib6/gmm6/o/bw;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/c/an;->p()I

    move-result v1

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->b(I)V

    :cond_3
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->d:Lcom/google/maps/api/android/lib6/gmm6/o/bw;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/c/an;->o()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->d(I)V

    :cond_4
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->h:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/an;->s()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->e:F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->h:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->c()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->h:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->b()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->a:Lcom/google/maps/api/android/lib6/c/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/an;->r()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->d:Lcom/google/maps/api/android/lib6/gmm6/o/bw;

    invoke-virtual {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->a:Lcom/google/maps/api/android/lib6/c/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/an;->r()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->d:Lcom/google/maps/api/android/lib6/gmm6/o/bw;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/t;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->g:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->d:Lcom/google/maps/api/android/lib6/gmm6/o/bw;

    invoke-virtual {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/t;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(I)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->a:Lcom/google/maps/api/android/lib6/c/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/an;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->d:Lcom/google/maps/api/android/lib6/gmm6/o/bw;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->f()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/an;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/u;->e:F

    return v0
.end method
