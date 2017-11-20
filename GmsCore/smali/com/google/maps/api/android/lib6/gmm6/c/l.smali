.class public final Lcom/google/maps/api/android/lib6/gmm6/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/ee;
.implements Lcom/google/maps/api/android/lib6/gmm6/c/r;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/gmm6/c/s;

.field private final b:Lcom/google/maps/api/android/lib6/c/ed;

.field private c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private d:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

.field private e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field private f:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

.field private g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

.field private h:F


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/c/s;Lcom/google/maps/api/android/lib6/c/ed;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->a:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/l;->a(I)V

    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->a:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->a:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->a(Lcom/google/maps/api/android/lib6/gmm6/c/r;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->a:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->b()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    monitor-enter p0

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ed;->n()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    iget-object v0, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    iget-object v0, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    cmpg-double v0, v2, v4

    if-gez v0, :cond_4

    iget-object v0, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->b:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->b(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    :goto_0
    iget-object v1, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->a:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->b(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/c/ed;->o()F

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/c/ed;->p()F

    move-result v3

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    sub-float v5, v7, v2

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v2, v6

    add-float/2addr v2, v5

    float-to-int v2, v2

    sub-float v5, v7, v3

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {v4, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    :cond_0
    and-int/lit8 v0, p1, 0x17

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/c/ed;->o()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/c/ed;->p()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(FFF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/c/ed;->o()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/c/ed;->p()F

    move-result v2

    sub-float/2addr v2, v7

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(FFF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/c/ed;->o()F

    move-result v1

    sub-float v1, v7, v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/c/ed;->p()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(FFF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/c/ed;->o()F

    move-result v1

    sub-float v1, v7, v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/c/ed;->p()F

    move-result v2

    sub-float/2addr v2, v7

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(FFF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ed;->n()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/c/ed;->m()F

    move-result v1

    cmpl-float v1, v1, v8

    if-nez v1, :cond_5

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->d:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    :cond_1
    :goto_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/l;->h()V

    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->a:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ed;->r()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->h:F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->a:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->c()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->a:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_3
    iget-object v0, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->b:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->b(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->d()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    double-to-int v3, v0

    double-to-int v0, v0

    invoke-direct {v2, v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(Lcom/google/maps/api/android/lib6/gmm6/l/p;)Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->d:Lcom/google/maps/api/android/lib6/gmm6/l/cd;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ed;->s()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v()Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->d:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->b(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->d:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->d:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v2

    if-gt v0, v2, :cond_1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_4
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->e:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q()V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-nez v2, :cond_2

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-direct {v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->c(Z)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->d(Z)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/c/ed;->t()Lcom/google/maps/api/android/lib6/c/cs;

    move-result-object v3

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/c/cs;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    if-nez v2, :cond_3

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;-><init>(I)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->b()F

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->c()F

    move-result v3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(FF)V

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(FF)V

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(FF)V

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v4, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(FF)V

    :cond_3
    const/4 v2, 0x1

    const/16 v3, 0x303

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v2, 0x2300

    const/16 v3, 0x2200

    const/16 v4, 0x2100

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/c/ed;->q()F

    move-result v2

    sub-float v3, v7, v2

    sub-float v4, v7, v2

    sub-float v5, v7, v2

    sub-float v2, v7, v2

    invoke-interface {v0, v3, v4, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1, p2, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;F)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/c/ed;->m()F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/c/ed;->n()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    move-result-object v2

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->d()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v0, v3, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/t;)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/l;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(I)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/l;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->b:Lcom/google/maps/api/android/lib6/c/ed;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/ed;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/l;->h:F

    return v0
.end method
