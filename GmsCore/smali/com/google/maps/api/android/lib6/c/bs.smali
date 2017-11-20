.class public final Lcom/google/maps/api/android/lib6/c/bs;
.super Lcom/google/android/gms/maps/model/a/z;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/al;


# static fields
.field private static final a:Lcom/google/android/gms/maps/model/TileOverlayOptions;

.field private static b:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final c:Lcom/google/maps/api/android/lib6/c/ak;

.field private final d:Lcom/google/maps/api/android/lib6/c/bu;

.field private final e:Ljava/lang/String;

.field private f:Lcom/google/maps/api/android/lib6/c/bt;

.field private final g:Lcom/google/android/gms/maps/model/w;

.field private h:Z

.field private i:F

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/c/bs;->a:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/c/bs;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;Lcom/google/maps/api/android/lib6/c/ak;Lcom/google/maps/api/android/lib6/c/bu;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/a/z;-><init>()V

    const-string v0, "to%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/maps/api/android/lib6/c/bs;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/bs;->c:Lcom/google/maps/api/android/lib6/c/ak;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/c/bs;->d:Lcom/google/maps/api/android/lib6/c/bu;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->c()Lcom/google/android/gms/maps/model/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->g:Lcom/google/android/gms/maps/model/w;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->h:Z

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->i:F

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->j:Z

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e()Z

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bs;->a:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->aj:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d()F

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bs;->a:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->ai:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->f()Z

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bs;->a:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->f()Z

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->ak:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_2
    return-void
.end method

.method private a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->k:Z

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit p0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->f:Lcom/google/maps/api/android/lib6/c/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->f:Lcom/google/maps/api/android/lib6/c/bt;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/c/bt;->a(I)V

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

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->x:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/bs;->l()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->c:Lcom/google/maps/api/android/lib6/c/ak;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/c/ak;->b(Lcom/google/maps/api/android/lib6/c/al;)V

    return-void
.end method

.method public final a(F)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->ai:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/c/bs;->i:F

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/bs;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/google/maps/api/android/lib6/c/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/bs;->f:Lcom/google/maps/api/android/lib6/c/bt;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->aj:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/c/bs;->h:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/bs;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/maps/model/a/y;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->ah:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->f:Lcom/google/maps/api/android/lib6/c/bt;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/bt;->h()V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->ak:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/c/bs;->j:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/bs;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()F
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/bs;->i()F

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/bs;->j()Z

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/bs;->k()Z

    move-result v0

    return v0
.end method

.method public final h()Lcom/google/android/gms/maps/model/w;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->g:Lcom/google/android/gms/maps/model/w;

    return-object v0
.end method

.method public final declared-synchronized i()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->i:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->k:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->k:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->f:Lcom/google/maps/api/android/lib6/c/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/bs;->f:Lcom/google/maps/api/android/lib6/c/bt;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/bt;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/bs;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/a/cf;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
