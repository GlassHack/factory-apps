.class final Lcom/google/maps/api/android/lib6/gmm6/o/bx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/gmm6/o/bw;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/bw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bx;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/bw;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/bx;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bw;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bx;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bw;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bw;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bx;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bw;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->b(Lcom/google/maps/api/android/lib6/gmm6/o/bw;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/c/c/fx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/h/q;->b:Lcom/google/maps/api/android/lib6/gmm6/h/q;

    invoke-static {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/o;->a(Ljava/util/List;Lcom/google/maps/api/android/lib6/gmm6/h/q;)Lcom/google/maps/api/android/lib6/gmm6/h/v;
    :try_end_1
    .catch Lcom/google/maps/api/android/lib6/gmm6/h/k; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bx;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bw;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bw;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bx;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bw;

    invoke-static {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bw;Lcom/google/maps/api/android/lib6/gmm6/h/v;)Lcom/google/maps/api/android/lib6/gmm6/h/v;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bx;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bw;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->d(Lcom/google/maps/api/android/lib6/gmm6/o/bw;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bx;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bw;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->e(Lcom/google/maps/api/android/lib6/gmm6/o/bw;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bx;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bw;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->f(Lcom/google/maps/api/android/lib6/gmm6/o/bw;)Lcom/google/maps/api/android/lib6/gmm6/o/t;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bx;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bw;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->f(Lcom/google/maps/api/android/lib6/gmm6/o/bw;)Lcom/google/maps/api/android/lib6/gmm6/o/t;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/t;->a(ZZ)V

    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v1

    :try_start_3
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bx;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bw;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->c(Lcom/google/maps/api/android/lib6/gmm6/o/bw;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/c/c/fx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x7d0

    if-ge v1, v0, :cond_2

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/h/q;->c:Lcom/google/maps/api/android/lib6/gmm6/h/q;

    invoke-static {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/o;->a(Ljava/util/List;Lcom/google/maps/api/android/lib6/gmm6/h/q;)Lcom/google/maps/api/android/lib6/gmm6/h/v;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a()Lcom/google/maps/api/android/lib6/gmm6/h/v;
    :try_end_3
    .catch Lcom/google/maps/api/android/lib6/gmm6/h/k; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/h/v;->a()Lcom/google/maps/api/android/lib6/gmm6/h/v;

    move-result-object v0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
