.class public final Lcom/google/maps/api/android/lib6/gmm6/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/az;
.implements Lcom/google/maps/api/android/lib6/gmm6/o/bp;
.implements Lcom/google/maps/api/android/lib6/gmm6/o/bs;


# instance fields
.field final a:Lcom/google/maps/api/android/lib6/c/y;

.field final b:Lcom/google/maps/api/android/lib6/gmm6/o/br;

.field private final c:Ljava/util/Map;

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

.field private final e:Lcom/google/maps/api/android/lib6/gmm6/o/bo;

.field private final f:Lcom/google/maps/api/android/lib6/c/br;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/c/y;Lcom/google/maps/api/android/lib6/gmm6/c/ao;Lcom/google/maps/api/android/lib6/gmm6/o/br;Lcom/google/maps/api/android/lib6/gmm6/o/bo;Lcom/google/maps/api/android/lib6/c/br;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->c:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a:Lcom/google/maps/api/android/lib6/c/y;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->d:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->b:Lcom/google/maps/api/android/lib6/gmm6/o/br;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    iput-object p5, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->f:Lcom/google/maps/api/android/lib6/c/br;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->b:Lcom/google/maps/api/android/lib6/gmm6/o/br;

    iput-object p0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ay;->b:Lcom/google/maps/api/android/lib6/gmm6/o/az;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->b:Lcom/google/maps/api/android/lib6/gmm6/o/br;

    iput-object p0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/br;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bs;

    invoke-virtual {p4, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bp;)V

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/c/y;Lcom/google/maps/api/android/lib6/gmm6/c/ao;)Lcom/google/maps/api/android/lib6/gmm6/c/g;
    .locals 6

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->a()Lcom/google/maps/api/android/lib6/c/br;

    move-result-object v5

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->n:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    invoke-interface {p0, v0}, Lcom/google/maps/api/android/lib6/c/y;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bu;)Lcom/google/maps/api/android/lib6/gmm6/o/br;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/maps/api/android/lib6/c/y;->e()Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    move-result-object v4

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/c/g;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/c/g;-><init>(Lcom/google/maps/api/android/lib6/c/y;Lcom/google/maps/api/android/lib6/gmm6/c/ao;Lcom/google/maps/api/android/lib6/gmm6/o/br;Lcom/google/maps/api/android/lib6/gmm6/o/bo;Lcom/google/maps/api/android/lib6/c/br;)V

    return-object v0
.end method

.method private c(Lcom/google/maps/api/android/lib6/gmm6/o/ax;)Lcom/google/maps/api/android/lib6/c/ac;
    .locals 2

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->d(Lcom/google/maps/api/android/lib6/gmm6/o/ax;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->q()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ac;

    goto :goto_0
.end method

.method private static d(Lcom/google/maps/api/android/lib6/gmm6/o/ax;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;
    .locals 1

    instance-of v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    check-cast p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a:Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/y;->d()V

    return-void
.end method

.method protected final a(Lcom/google/maps/api/android/lib6/gmm6/c/h;)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->b:Lcom/google/maps/api/android/lib6/gmm6/o/br;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/br;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)V

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/c/h;->b:Lcom/google/maps/api/android/lib6/c/ac;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ac;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a()V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/ax;)V
    .locals 7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->c(Lcom/google/maps/api/android/lib6/gmm6/o/ax;)Lcom/google/maps/api/android/lib6/c/ac;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ac;->G()Lcom/google/maps/api/android/lib6/c/ae;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/c/ae;->g(Lcom/google/maps/api/android/lib6/c/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->d(Lcom/google/maps/api/android/lib6/gmm6/o/ax;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->d:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->d()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    iget-object v0, v6, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->g:Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/y;->A()Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    move-result-object v4

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v2

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->k()F

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;FFFF)V

    const/16 v1, 0x12c

    invoke-virtual {v6, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;I)V

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->q()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->b:Lcom/google/maps/api/android/lib6/gmm6/o/br;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/br;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)V

    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/c/h;)V
    .locals 2

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/c/h;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->e()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->a:Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/y;->B()V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/ax;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->c(Lcom/google/maps/api/android/lib6/gmm6/o/ax;)Lcom/google/maps/api/android/lib6/c/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ac;->G()Lcom/google/maps/api/android/lib6/c/ae;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/c/ae;->h(Lcom/google/maps/api/android/lib6/c/ac;)V

    :cond_0
    return-void
.end method

.method protected final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)Z
    .locals 2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bo;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;->n()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->c(Lcom/google/maps/api/android/lib6/gmm6/o/ax;)Lcom/google/maps/api/android/lib6/c/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ac;->G()Lcom/google/maps/api/android/lib6/c/ae;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/c/ae;->d(Lcom/google/maps/api/android/lib6/c/ac;)V

    :cond_0
    return-void
.end method

.method public final d(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->c(Lcom/google/maps/api/android/lib6/gmm6/o/ax;)Lcom/google/maps/api/android/lib6/c/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ac;->G()Lcom/google/maps/api/android/lib6/c/ae;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/c/ae;->e(Lcom/google/maps/api/android/lib6/c/ac;)V

    :cond_0
    return-void
.end method

.method public final e(Lcom/google/maps/api/android/lib6/gmm6/o/c/b/af;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/g;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/c/g;->c(Lcom/google/maps/api/android/lib6/gmm6/o/ax;)Lcom/google/maps/api/android/lib6/c/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ac;->G()Lcom/google/maps/api/android/lib6/c/ae;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/c/ae;->f(Lcom/google/maps/api/android/lib6/c/ac;)V

    :cond_0
    return-void
.end method
