.class final Lcom/google/maps/api/android/lib6/gmm6/o/bm;
.super Lcom/google/maps/api/android/lib6/gmm6/n/b;


# instance fields
.field private volatile a:Z

.field private volatile b:I

.field private volatile c:Z

.field private d:Z

.field private e:J

.field private synthetic f:Lcom/google/maps/api/android/lib6/gmm6/o/bl;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/bl;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->f:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    const-string v0, "RenderDrive"

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/b;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->a:Z

    sget v0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->b:I

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->c:Z

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->d:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->e:J

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/o/bm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->d:Z

    return v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->f:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bn;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bn;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->b:I

    if-eq v0, p1, :cond_0

    const/16 v0, 0xf

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->c:Z

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->interrupt()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->a:Z

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->interrupt()V

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->b:I

    return v0
.end method

.method public final d()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->e()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->interrupt()V

    return-void
.end method

.method public final declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->f:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->f:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bn;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bn;->x()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()V
    .locals 4

    :goto_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->a:Z

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->c:Z

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->b:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->c:Z

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->d:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->e:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->d:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->e:J

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->f:Lcom/google/maps/api/android/lib6/gmm6/o/bl;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bn;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bn;->w()V

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method
