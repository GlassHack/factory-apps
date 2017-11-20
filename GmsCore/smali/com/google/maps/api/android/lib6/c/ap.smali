.class public final Lcom/google/maps/api/android/lib6/c/ap;
.super Lcom/google/android/gms/maps/model/a/t;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/al;
.implements Lcom/google/maps/api/android/lib6/c/an;


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final b:Lcom/google/android/gms/maps/model/PolygonOptions;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/maps/api/android/lib6/c/ak;

.field private final e:Lcom/google/maps/api/android/lib6/c/bu;

.field private f:Lcom/google/maps/api/android/lib6/c/ao;

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;

.field private final j:Ljava/util/List;

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/c/ap;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/c/ap;->b:Lcom/google/android/gms/maps/model/PolygonOptions;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/maps/model/PolygonOptions;Lcom/google/maps/api/android/lib6/c/ak;Lcom/google/maps/api/android/lib6/c/bu;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/a/t;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->j:Ljava/util/List;

    invoke-static {p2}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ak;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->d:Lcom/google/maps/api/android/lib6/c/ak;

    invoke-static {p3}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/bu;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->e:Lcom/google/maps/api/android/lib6/c/bu;

    const-string v0, "pg%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/maps/api/android/lib6/c/ap;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/c/ap;->a(Lcom/google/android/gms/maps/model/PolygonOptions;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/maps/model/PolygonOptions;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->e()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "line width is negative"

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->a(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->e()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->m:F

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->f()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->k:I

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->g()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->l:I

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->h()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->n:F

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->p:Z

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->o:Z

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/fx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->g:Ljava/util/List;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/ap;->c(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->i:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/c/c/fx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/ap;->c(Ljava/util/List;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/ap;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ap;->t()V

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->f()I

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ap;->b:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->f()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->J:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->e()F

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ap;->b:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->e()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->I:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->j()Z

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ap;->b:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->j()Z

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->N:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->i()Z

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ap;->b:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->i()Z

    move-result v1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->M:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->h()F

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ap;->b:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->h()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->L:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->d()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ap;->b:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->d()Ljava/util/List;

    move-result-object v1

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->H:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_7
    return-void
.end method

.method private c(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->q:Z

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    monitor-exit p0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->f:Lcom/google/maps/api/android/lib6/c/ao;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/c/ao;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static c(Ljava/util/List;)V
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private t()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/dv;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->h:Ljava/util/List;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/ap;->j:Ljava/util/List;

    iget-boolean v3, p0, Lcom/google/maps/api/android/lib6/c/ap;->o:Z

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/dv;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->g:Ljava/util/List;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private declared-synchronized u()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->F:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ap;->l()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->d:Lcom/google/maps/api/android/lib6/c/ak;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/c/ak;->b(Lcom/google/maps/api/android/lib6/c/al;)V

    return-void
.end method

.method public final a(F)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->I:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "line width is negative"

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->a(ZLjava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/c/ap;->m:F

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ap;->c(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->J:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/c/ap;->k:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ap;->c(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/google/maps/api/android/lib6/c/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ap;->f:Lcom/google/maps/api/android/lib6/c/ao;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->G:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/c/c/fx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->g:Ljava/util/List;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/ap;->c(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ap;->t()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ap;->c(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->M:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/c/ap;->p:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ap;->c(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/maps/model/a/s;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(F)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->L:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/c/ap;->n:F

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ap;->c(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(I)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->K:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/c/ap;->l:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ap;->c(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 3

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->H:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/c/c/fx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/ap;->c(Ljava/util/List;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/ap;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ap;->t()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ap;->c(I)V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->N:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/c/ap;->o:Z

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ap;->t()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ap;->c(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/google/c/c/fx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Ljava/util/List;
    .locals 3

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/c/c/fx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public final e()F
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ap;->o()F

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ap;->p()I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ap;->q()I

    move-result v0

    return v0
.end method

.method public final h()F
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ap;->s()F

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ap;->r()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ap;->u()Z

    move-result v0

    return v0
.end method

.method public final k()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final l()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->q:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->q:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->f:Lcom/google/maps/api/android/lib6/c/ao;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ao;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized m()Ljava/util/List;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->h:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized n()Ljava/util/List;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->j:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized o()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->m:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized p()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized q()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized r()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized s()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ap;->n:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
