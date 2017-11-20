.class public final Lcom/google/maps/api/android/lib6/gmm6/c/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/ao;
.implements Lcom/google/maps/api/android/lib6/gmm6/c/r;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/c/an;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;

.field private d:F

.field private final e:Lcom/google/maps/api/android/lib6/gmm6/c/s;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/c/s;Lcom/google/maps/api/android/lib6/c/an;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->e:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->a:Lcom/google/maps/api/android/lib6/c/an;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/v;->a(I)V

    return-void
.end method

.method private static a(Ljava/util/List;FILjava/util/List;)V
    .locals 4

    invoke-interface {p3}, Ljava/util/List;->clear()V

    invoke-static {p2}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(I)I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/o/bq;

    invoke-direct {v3, v0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bq;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/l;FI)V

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized h()V
    .locals 14

    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v12, 0x20000000

    const v11, 0x1fffffff

    const/high16 v10, -0x20000000

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/an;->m()Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/n;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/n;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->b(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v12, :cond_1

    :cond_0
    invoke-virtual {v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-object v0, v1

    :goto_1
    move-object v2, v3

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v6

    sub-int/2addr v0, v6

    if-le v0, v12, :cond_2

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v6

    sub-int/2addr v0, v6

    int-to-float v0, v0

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v6

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, v13

    int-to-float v6, v6

    div-float/2addr v0, v6

    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/high16 v7, -0x20000000

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v2

    sub-int v2, v10, v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v8

    float-to-int v2, v2

    invoke-direct {v6, v7, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const v7, 0x1fffffff

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v9

    sub-int v9, v12, v9

    int-to-float v9, v9

    mul-float/2addr v0, v9

    add-float/2addr v0, v8

    float-to-int v0, v0

    invoke-direct {v2, v7, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-virtual {v1, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->d()Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/n;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/n;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v6

    sub-int/2addr v0, v6

    if-ge v0, v10, :cond_3

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v0

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v6

    sub-int/2addr v0, v6

    int-to-float v0, v0

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v6

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, v13

    int-to-float v6, v6

    div-float/2addr v0, v6

    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const v7, 0x1fffffff

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v2

    sub-int v2, v11, v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v8

    float-to-int v2, v2

    invoke-direct {v6, v7, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/high16 v7, -0x20000000

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v9

    sub-int v9, v10, v9

    int-to-float v9, v9

    mul-float/2addr v0, v9

    add-float/2addr v0, v8

    float-to-int v0, v0

    invoke-direct {v2, v7, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-virtual {v1, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->d()Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/n;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/n;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    goto/16 :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->d()Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/c/an;->o()F

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/c/an;->p()I

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->c:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/c/v;->a(Ljava/util/List;FILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->e:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->e:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->a(Lcom/google/maps/api/android/lib6/gmm6/c/r;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->e:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->b()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(I)V
    .locals 3

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/v;->h()V

    :cond_0
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/c/an;->p()I

    move-result v2

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->b(I)V

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/c/an;->o()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->a(F)V

    goto :goto_1

    :cond_2
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->e:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/an;->s()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->d:F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->e:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->c()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->e:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->b()V

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->e:Lcom/google/maps/api/android/lib6/gmm6/c/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->b()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->a:Lcom/google/maps/api/android/lib6/c/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/an;->r()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;

    invoke-virtual {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->a:Lcom/google/maps/api/android/lib6/c/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/an;->r()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/t;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
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
    .locals 3

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->a:Lcom/google/maps/api/android/lib6/c/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/an;->r()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v1

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

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->a:Lcom/google/maps/api/android/lib6/c/an;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/an;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/v;->d:F

    return v0
.end method
