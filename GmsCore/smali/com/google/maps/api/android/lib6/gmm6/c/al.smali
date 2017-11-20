.class final Lcom/google/maps/api/android/lib6/gmm6/c/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/Random;

.field private final b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

.field private c:Ljava/util/concurrent/ScheduledFuture;

.field private d:I

.field private synthetic e:Lcom/google/maps/api/android/lib6/gmm6/c/aj;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/c/aj;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Ljava/util/Random;)V
    .locals 1

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->e:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->c:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->d:I

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->a:Ljava/util/Random;

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private declared-synchronized a(Lcom/google/android/gms/maps/model/Tile;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget v2, p1, Lcom/google/android/gms/maps/model/Tile;->a:I

    if-lez v2, :cond_0

    move v2, v0

    :goto_0
    const-string v3, "width of tile image must be positive"

    invoke-static {v2, v3}, Lcom/google/c/a/cj;->a(ZLjava/lang/Object;)V

    iget v2, p1, Lcom/google/android/gms/maps/model/Tile;->b:I

    if-lez v2, :cond_1

    :goto_1
    const-string v1, "height of tile image must be positive"

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->a(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/cu;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    const/4 v2, 0x0

    iget v3, p1, Lcom/google/android/gms/maps/model/Tile;->a:I

    iget v3, p1, Lcom/google/android/gms/maps/model/Tile;->b:I

    iget-object v3, p1, Lcom/google/android/gms/maps/model/Tile;->c:[B

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/l/av;->t:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/cu;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;I[BLcom/google/maps/api/android/lib6/gmm6/l/av;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->c:Ljava/util/concurrent/ScheduledFuture;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->e:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->e:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-static {v1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a(Lcom/google/maps/api/android/lib6/gmm6/c/aj;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/cu;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/al;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->c:Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->e:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->e:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a(Lcom/google/maps/api/android/lib6/gmm6/c/aj;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->c:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->c:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized run()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->e:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->a(Lcom/google/maps/api/android/lib6/gmm6/c/aj;)Lcom/google/android/gms/maps/model/w;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c()I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d()I

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/w;->a(III)Lcom/google/android/gms/maps/model/Tile;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->d:I

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->a:Ljava/util/Random;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-long v0, v0

    const-wide/32 v2, 0x493e0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->e:Lcom/google/maps/api/android/lib6/gmm6/c/aj;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/c/aj;->b(Lcom/google/maps/api/android/lib6/gmm6/c/aj;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p0, v0, v1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/al;->c:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/al;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    sget-object v1, Lcom/google/android/gms/maps/model/w;->b:Lcom/google/android/gms/maps/model/Tile;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/al;->b()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/al;->a(Lcom/google/android/gms/maps/model/Tile;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
