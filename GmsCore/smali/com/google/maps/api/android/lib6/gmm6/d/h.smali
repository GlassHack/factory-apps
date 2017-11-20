.class final Lcom/google/maps/api/android/lib6/gmm6/d/h;
.super Lcom/google/maps/api/android/lib6/b/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Lcom/google/g/a/b/b/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/google/g/a/b/b/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/b;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/d/h;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/maps/api/android/lib6/gmm6/d/h;->b:Z

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/d/h;->c:Lcom/google/g/a/b/b/f;

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/d/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/d/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/gmm6/d/h;)Lcom/google/g/a/b/b/f;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/d/h;->c:Lcom/google/g/a/b/b/f;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/DataOutput;)V
    .locals 9

    const/4 v8, -0x1

    new-instance v1, Lcom/google/g/a/b/b/f;

    sget-object v0, Lcom/google/n/c/a/a/m;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v1, v0}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    const-class v2, Lcom/google/maps/api/android/lib6/gmm6/d/g;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->e()Lcom/google/g/a/b/b/f;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->e()Lcom/google/g/a/b/b/f;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v4

    new-instance v5, Lcom/google/g/a/b/b/f;

    sget-object v6, Lcom/google/n/c/a/a/m;->d:Lcom/google/g/a/b/b/h;

    invoke-direct {v5, v6}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-static {v4, v6, v7}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/f;II)I

    move-result v6

    if-eq v6, v8, :cond_0

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    :cond_0
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/google/g/a/b/b/f;->e(I)J

    move-result-wide v6

    const/4 v4, 0x2

    invoke-virtual {v5, v4, v6, v7}, Lcom/google/g/a/b/b/f;->a(IJ)Lcom/google/g/a/b/b/f;

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/google/g/a/b/b/f;->a(ILcom/google/g/a/b/b/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/d/h;->c:Lcom/google/g/a/b/b/f;

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->a(Lcom/google/g/a/b/b/f;Lcom/google/g/a/b/b/f;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lcom/google/g/a/b/b/f;->a(Ljava/io/OutputStream;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/google/n/c/a/a/m;->c:Lcom/google/g/a/b/b/h;

    invoke-static {v2, p1}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/h;Ljava/io/DataInput;)Lcom/google/g/a/b/b/f;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v4

    const-class v5, Lcom/google/maps/api/android/lib6/gmm6/d/g;

    monitor-enter v5

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v3, v6, v2}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v6}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->a(Lcom/google/g/a/b/b/f;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v6}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->b(Lcom/google/g/a/b/b/f;)V

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->e()Lcom/google/g/a/b/b/f;

    move-result-object v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/d/h;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->a(Lcom/google/g/a/b/b/f;Ljava/lang/String;)Z

    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/d/h;->b:Z

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->f()Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/fx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->h()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->i()Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->a()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/d/h;->a:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/d/h;->c:Lcom/google/g/a/b/b/f;

    invoke-static {v0, v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->a(Lcom/google/maps/api/android/lib6/b/h;Ljava/lang/String;ZLcom/google/g/a/b/b/f;)V

    :goto_2
    monitor-exit v2

    :cond_5
    return v1

    :cond_6
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/d/i;

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/y;->a()Lcom/google/g/a/d/g;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/google/maps/api/android/lib6/gmm6/d/i;-><init>(Lcom/google/maps/api/android/lib6/gmm6/d/h;Lcom/google/g/a/d/g;)V

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->a(Lcom/google/g/a/d/h;)Lcom/google/g/a/d/h;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->k()Lcom/google/g/a/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/g/a/d/h;->j()V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->k()Lcom/google/g/a/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/g/a/d/h;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h()I
    .locals 1

    const/16 v0, 0x4b

    return v0
.end method
