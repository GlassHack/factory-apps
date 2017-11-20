.class public final Lcom/google/maps/api/android/lib6/c/dk;
.super Lcom/google/android/gms/maps/model/a/e;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/al;
.implements Lcom/google/maps/api/android/lib6/c/an;


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final b:Lcom/google/android/gms/maps/model/CircleOptions;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/maps/api/android/lib6/c/ak;

.field private final e:Lcom/google/maps/api/android/lib6/c/bu;

.field private f:Lcom/google/maps/api/android/lib6/c/ao;

.field private g:Lcom/google/android/gms/maps/model/LatLng;

.field private h:D

.field private i:Ljava/util/List;

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/c/dk;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/c/dk;->b:Lcom/google/android/gms/maps/model/CircleOptions;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/maps/model/CircleOptions;Lcom/google/maps/api/android/lib6/c/ak;Lcom/google/maps/api/android/lib6/c/bu;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/a/e;-><init>()V

    invoke-static {p2}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ak;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->d:Lcom/google/maps/api/android/lib6/c/ak;

    invoke-static {p3}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/bu;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->e:Lcom/google/maps/api/android/lib6/c/bu;

    const-string v0, "ci%d"

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/google/maps/api/android/lib6/c/dk;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CircleOptions;->d()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    move v0, v1

    :goto_0
    const-string v3, "line width is negative"

    invoke-static {v0, v3}, Lcom/google/c/a/cj;->a(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CircleOptions;->b()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CircleOptions;->c()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_6

    :goto_1
    const-string v0, "radius is negative"

    invoke-static {v1, v0}, Lcom/google/c/a/cj;->a(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CircleOptions;->b()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->g:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CircleOptions;->c()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->h:D

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CircleOptions;->d()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->l:F

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CircleOptions;->e()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->j:I

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CircleOptions;->f()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->k:I

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CircleOptions;->g()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->m:F

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CircleOptions;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->n:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->g:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/c/dk;->h:D

    invoke-static {v0, v2, v3}, Lcom/google/maps/api/android/lib6/c/dk;->a(Lcom/google/android/gms/maps/model/LatLng;D)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->i:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CircleOptions;->f()I

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/dk;->b:Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CircleOptions;->f()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->U:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CircleOptions;->e()I

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/dk;->b:Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CircleOptions;->e()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->T:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CircleOptions;->d()F

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/dk;->b:Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CircleOptions;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->S:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CircleOptions;->h()Z

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/dk;->b:Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CircleOptions;->h()Z

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->W:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CircleOptions;->g()F

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/dk;->b:Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CircleOptions;->g()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->V:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto/16 :goto_0

    :cond_6
    move v1, v2

    goto/16 :goto_1
.end method

.method private static a(Lcom/google/android/gms/maps/model/LatLng;D)Ljava/util/List;
    .locals 27

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    const-wide v12, 0x41584db040000000L    # 6371009.0

    div-double v12, p1, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const/4 v6, 0x0

    :goto_0
    const/16 v18, 0x64

    move/from16 v0, v18

    if-ge v6, v0, :cond_0

    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v0, v6

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    const-wide v20, 0x4058c00000000000L    # 99.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v22, v8, v14

    mul-double v24, v16, v12

    mul-double v20, v20, v24

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->asin(D)D

    move-result-wide v22

    mul-double v18, v18, v12

    mul-double v18, v18, v16

    mul-double v20, v20, v8

    sub-double v20, v14, v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    add-double v18, v18, v10

    new-instance v20, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v22

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v18

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-object v7
.end method

.method private c(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->o:Z

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit p0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->f:Lcom/google/maps/api/android/lib6/c/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->f:Lcom/google/maps/api/android/lib6/c/ao;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/c/ao;->a(I)V

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

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->P:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/dk;->l()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->d:Lcom/google/maps/api/android/lib6/c/ak;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/c/ak;->b(Lcom/google/maps/api/android/lib6/c/al;)V

    return-void
.end method

.method public final a(D)V
    .locals 3

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->R:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/maps/api/android/lib6/c/dk;->h:D

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->g:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v0, p1, p2}, Lcom/google/maps/api/android/lib6/c/dk;->a(Lcom/google/android/gms/maps/model/LatLng;D)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->i:Ljava/util/List;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/dk;->c(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(F)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->S:Lcom/google/maps/api/android/lib6/c/bw;

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
    iput p1, p0, Lcom/google/maps/api/android/lib6/c/dk;->l:F

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/dk;->c(I)V

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

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->T:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/c/dk;->j:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/dk;->c(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->Q:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/dk;->g:Lcom/google/android/gms/maps/model/LatLng;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->h:D

    invoke-static {p1, v0, v1}, Lcom/google/maps/api/android/lib6/c/dk;->a(Lcom/google/android/gms/maps/model/LatLng;D)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->i:Ljava/util/List;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/dk;->c(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/google/maps/api/android/lib6/c/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/dk;->f:Lcom/google/maps/api/android/lib6/c/ao;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->W:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/c/dk;->n:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/dk;->c(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/maps/model/a/d;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(F)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->V:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/c/dk;->m:F

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/dk;->c(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(I)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->e:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->U:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/c/dk;->k:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/dk;->c(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->g:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final d()D
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->h:D

    return-wide v0
.end method

.method public final e()F
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/dk;->o()F

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/dk;->p()I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/dk;->q()I

    move-result v0

    return v0
.end method

.method public final h()F
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/dk;->s()F

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/dk;->r()Z

    move-result v0

    return v0
.end method

.method public final j()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final l()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->o:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->o:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->f:Lcom/google/maps/api/android/lib6/c/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->f:Lcom/google/maps/api/android/lib6/c/ao;

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
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->i:Ljava/util/List;
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
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

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
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->l:F
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
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->j:I
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
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->k:I
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
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->n:Z
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
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/dk;->m:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
