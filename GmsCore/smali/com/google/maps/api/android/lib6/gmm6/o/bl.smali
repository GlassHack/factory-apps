.class public final Lcom/google/maps/api/android/lib6/gmm6/o/bl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/t;


# static fields
.field static final a:I


# instance fields
.field final b:Lcom/google/maps/api/android/lib6/gmm6/o/bn;

.field private c:I

.field private d:J

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a:I

    return-void

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/bn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->m:Z

    sget v0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a:I

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->b(I)V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bn;

    return-void
.end method

.method private b(I)V
    .locals 1

    sget v0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->c:I

    add-int/lit16 v0, v0, 0x4e20

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->c:I

    return-void
.end method

.method public final a(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    invoke-virtual {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->a(J)V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->f:Z

    return-void
.end method

.method public final a(ZZ)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->h()V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->d()V

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->e()V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->c:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->c:I

    if-eqz v1, :cond_0

    const v1, 0x88b8

    if-gt v0, v1, :cond_1

    :cond_0
    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->c:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->c:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->d:J

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->g:Z

    return-void
.end method

.method public final c()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->d:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v1, v0, 0x5

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->f:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->a:I

    :goto_0
    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->g:Z

    if-eqz v2, :cond_0

    add-int/lit16 v0, v0, 0x1f4

    :cond_0
    const/16 v2, 0xf

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->c()I

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->h:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->f:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->e()V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->a(I)V

    :cond_2
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->g:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->f:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->i:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->j:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->k:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->j:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->i:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->j:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3e6b8520    # 0.23000002f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_8

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->e:I

    int-to-float v0, v0

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->b(I)V

    :cond_3
    :goto_3
    iput v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->k:I

    iput v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->i:I

    iput v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->j:I

    :cond_4
    return-void

    :cond_5
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->e:I

    goto :goto_0

    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->f()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->f()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->d()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8
    const v1, 0x3ebd70a4    # 0.37f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->e:I

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->b(I)V

    goto :goto_3
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->h:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->d()V
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

.method public final e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->a()V

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bn;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bn;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bm;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bl;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->start()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->m:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bl;->l:Lcom/google/maps/api/android/lib6/gmm6/o/bm;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bm;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bm;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
