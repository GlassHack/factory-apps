.class public final Lcom/google/maps/api/android/lib6/c/aq;
.super Lcom/google/android/gms/maps/model/a/w;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/al;
.implements Lcom/google/maps/api/android/lib6/c/an;


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final b:Lcom/google/android/gms/maps/model/PolylineOptions;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/maps/api/android/lib6/c/ak;

.field private final e:Lcom/google/maps/api/android/lib6/c/bu;

.field private f:Lcom/google/maps/api/android/lib6/c/ao;

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:I

.field private j:F

.field private k:Z

.field private l:F

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/c/aq;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/c/aq;->b:Lcom/google/android/gms/maps/model/PolylineOptions;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/maps/model/PolylineOptions;Lcom/google/maps/api/android/lib6/c/ak;Lcom/google/maps/api/android/lib6/c/bu;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/a/w;-><init>()V

    invoke-static {p2}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ak;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->d:Lcom/google/maps/api/android/lib6/c/ak;

    invoke-static {p3}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/bu;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->e:Lcom/google/maps/api/android/lib6/c/bu;

    const-string v0, "pl%d"

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/google/maps/api/android/lib6/c/aq;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->c()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    move v0, v1

    :goto_0
    const-string v1, "line width is negative"

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->a(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->c()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->j:F

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->d()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->i:I

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->e()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->l:F

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->n:Z

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->m:Z

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/fx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->g:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/aq;->j()V

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->d()I

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/aq;->b:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->d()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->A:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->c()F

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/aq;->b:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->c()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->z:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->g()Z

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/aq;->b:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->g()Z

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->D:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->f()Z

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/aq;->b:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->f()Z

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->C:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->e()F

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/aq;->b:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->e()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->B:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto/16 :goto_0
.end method

.method private b(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->k:Z

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    monitor-exit p0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->f:Lcom/google/maps/api/android/lib6/c/ao;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/c/ao;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/dv;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->h:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->g:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->x:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/aq;->l()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->d:Lcom/google/maps/api/android/lib6/c/ak;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/c/ak;->b(Lcom/google/maps/api/android/lib6/c/al;)V

    return-void
.end method

.method public final a(F)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->z:Lcom/google/maps/api/android/lib6/c/bw;

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
    iput p1, p0, Lcom/google/maps/api/android/lib6/c/aq;->j:F

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/aq;->b(I)V

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

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->A:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/c/aq;->i:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/aq;->b(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/google/maps/api/android/lib6/c/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/aq;->f:Lcom/google/maps/api/android/lib6/c/ao;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->y:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    invoke-static {p1}, Lcom/google/c/c/fx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->g:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/aq;->j()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/aq;->b(I)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->C:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/c/aq;->n:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/aq;->b(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/maps/model/a/v;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(F)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->B:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/c/aq;->l:F

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/aq;->b(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Z)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->D:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/c/aq;->m:Z

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/aq;->j()V

    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/google/c/c/fx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final d()F
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/aq;->o()F

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/aq;->p()I

    move-result v0

    return v0
.end method

.method public final f()F
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/aq;->s()F

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/aq;->r()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->m:Z

    return v0
.end method

.method public final i()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final l()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->k:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->k:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->f:Lcom/google/maps/api/android/lib6/c/ao;

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
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->h:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final n()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized o()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->j:F
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
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final q()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized r()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->n:Z
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
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/aq;->l:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
