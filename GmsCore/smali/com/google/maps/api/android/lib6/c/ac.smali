.class public final Lcom/google/maps/api/android/lib6/c/ac;
.super Lcom/google/android/gms/maps/model/a/q;


# static fields
.field private static final a:Lcom/google/android/gms/maps/model/MarkerOptions;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/maps/api/android/lib6/c/ae;

.field private final d:Lcom/google/maps/api/android/lib6/c/cr;

.field private final e:Lcom/google/maps/api/android/lib6/c/bu;

.field private final f:Lcom/google/maps/api/android/lib6/c/br;

.field private g:Lcom/google/android/gms/maps/model/LatLng;

.field private h:Lcom/google/maps/api/android/lib6/c/cj;

.field private i:F

.field private j:F

.field private k:Z

.field private l:F

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:F

.field private r:F

.field private s:Z

.field private t:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/c/ac;->a:Lcom/google/android/gms/maps/model/MarkerOptions;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/maps/model/MarkerOptions;Lcom/google/maps/api/android/lib6/c/ae;Lcom/google/maps/api/android/lib6/c/cr;Lcom/google/maps/api/android/lib6/c/br;Lcom/google/maps/api/android/lib6/c/bu;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/a/q;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ac;->b:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ae;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->c:Lcom/google/maps/api/android/lib6/c/ae;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/c/ac;->d:Lcom/google/maps/api/android/lib6/c/cr;

    iput-object p6, p0, Lcom/google/maps/api/android/lib6/c/ac;->e:Lcom/google/maps/api/android/lib6/c/bu;

    iput-object p5, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->d()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->g:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->g()Lcom/google/android/gms/maps/model/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/cj;->a(Lcom/google/android/gms/maps/model/a;)Lcom/google/maps/api/android/lib6/c/cj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->h:Lcom/google/maps/api/android/lib6/c/cj;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->d:Lcom/google/maps/api/android/lib6/c/cr;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ac;->h:Lcom/google/maps/api/android/lib6/c/cj;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/cr;->a(Lcom/google/maps/api/android/lib6/c/cj;)V

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->h()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->i:F

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->i()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->j:F

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->k:Z

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->m()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->l:F

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->p()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->t:F

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->o:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->p:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->m:Z

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->n:Z

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->n()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->q:F

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->o()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->r:F

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->h()F

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ac;->a:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->h()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->i()F

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ac;->a:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->i()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->h:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->n()F

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ac;->a:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->n()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->o()F

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ac;->a:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->o()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->m:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->g()Lcom/google/android/gms/maps/model/a;

    move-result-object v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ac;->a:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->g()Lcom/google/android/gms/maps/model/a;

    move-result-object v1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->g:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ac;->a:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->e()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->e:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_5
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ac;->a:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->f()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->f:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_6
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->j()Z

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ac;->a:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->j()Z

    move-result v1

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->i:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_7
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->k()Z

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ac;->a:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->k()Z

    move-result v1

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->j:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_8
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->l()Z

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ac;->a:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->l()Z

    move-result v1

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->k:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_9
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->m()F

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ac;->a:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->m()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->l:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_a
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->p()F

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ac;->a:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->p()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->n:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_b
    return-void
.end method

.method private a(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->s:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->c:Lcom/google/maps/api/android/lib6/c/ae;

    invoke-virtual {v0, p0, p1}, Lcom/google/maps/api/android/lib6/c/ae;->a(Lcom/google/maps/api/android/lib6/c/ac;I)V

    goto :goto_0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized B()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized C()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized D()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized E()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->l:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized F()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->t:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final G()Lcom/google/maps/api/android/lib6/c/ae;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->c:Lcom/google/maps/api/android/lib6/c/ae;

    return-object v0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->c:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ac;->o()V

    return-void
.end method

.method public final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/c/ac;->l:F

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ac;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(FF)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/c/ac;->i:F

    iput p2, p0, Lcom/google/maps/api/android/lib6/c/ac;->j:F

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ac;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/e/i;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->d:Lcom/google/maps/api/android/lib6/c/cr;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ac;->h:Lcom/google/maps/api/android/lib6/c/cj;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/cr;->c(Lcom/google/maps/api/android/lib6/c/cj;)V

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/c/cj;->a(Lcom/google/android/gms/e/i;)Lcom/google/maps/api/android/lib6/c/cj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->h:Lcom/google/maps/api/android/lib6/c/cj;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->d:Lcom/google/maps/api/android/lib6/c/cr;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ac;->h:Lcom/google/maps/api/android/lib6/c/cj;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/cr;->a(Lcom/google/maps/api/android/lib6/c/cj;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ac;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->d:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/c/ac;->b(Lcom/google/android/gms/maps/model/LatLng;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ac;->a(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ac;->o:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ac;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/c/ac;->m:Z

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ac;->a(I)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/a/p;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/c/ac;->t:F

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ac;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(FF)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/c/ac;->q:F

    iput p2, p0, Lcom/google/maps/api/android/lib6/c/ac;->r:F

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ac;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ac;->g:Lcom/google/android/gms/maps/model/LatLng;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ac;->p:Ljava/lang/String;

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ac;->a(I)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/c/ac;->n:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ac;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ac;->p()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public final c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/c/ac;->k:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ac;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ac;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ac;->B()Z

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->o:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ac;->a(I)V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->s:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ac;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->p:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ac;->a(I)V

    :cond_0
    return-void
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->c:Lcom/google/maps/api/android/lib6/c/ae;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/c/ae;->c(Lcom/google/maps/api/android/lib6/c/ac;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ac;->C()Z

    move-result v0

    return v0
.end method

.method public final k()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ac;->D()Z

    move-result v0

    return v0
.end method

.method public final m()F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ac;->E()F

    move-result v0

    return v0
.end method

.method public final n()F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ac;->F()F

    move-result v0

    return v0
.end method

.method final o()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->s:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ac;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ac;->h()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->s:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->d:Lcom/google/maps/api/android/lib6/c/cr;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ac;->h:Lcom/google/maps/api/android/lib6/c/cj;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/cr;->c(Lcom/google/maps/api/android/lib6/c/cj;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->c:Lcom/google/maps/api/android/lib6/c/ae;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/c/ae;->a(Lcom/google/maps/api/android/lib6/c/ac;)V

    goto :goto_0
.end method

.method public final declared-synchronized p()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->g:Lcom/google/android/gms/maps/model/LatLng;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized q()Landroid/graphics/Bitmap;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->d:Lcom/google/maps/api/android/lib6/c/cr;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ac;->h:Lcom/google/maps/api/android/lib6/c/cj;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/cr;->b(Lcom/google/maps/api/android/lib6/c/cj;)Lcom/google/maps/api/android/lib6/c/cs;

    move-result-object v0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/c/cs;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final r()F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ac;->s()F

    move-result v0

    return v0
.end method

.method public final declared-synchronized s()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->i:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final t()F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ac;->u()F

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized u()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->j:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final v()F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ac;->w()F

    move-result v0

    return v0
.end method

.method public final declared-synchronized w()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->q:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final x()F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->f:Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/br;->b()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ac;->y()F

    move-result v0

    return v0
.end method

.method public final declared-synchronized y()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->r:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized z()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ac;->o:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
