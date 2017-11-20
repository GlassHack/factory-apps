.class public abstract Lcom/google/android/gms/common/api/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/i;
.implements Lcom/google/android/gms/common/api/y;


# instance fields
.field public final a:Ljava/lang/Object;

.field protected b:Lcom/google/android/gms/common/api/h;

.field public c:Lcom/google/android/gms/common/internal/u;

.field private final d:Ljava/util/concurrent/CountDownLatch;

.field private final e:Ljava/util/ArrayList;

.field private f:Lcom/google/android/gms/common/api/ab;

.field private volatile g:Lcom/google/android/gms/common/api/aa;

.field private volatile h:Z

.field private i:Z

.field private j:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/f;->a:Ljava/lang/Object;

    .line 195
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/f;->d:Ljava/util/concurrent/CountDownLatch;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/f;->e:Ljava/util/ArrayList;

    .line 206
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/f;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;->i()V

    return-void
.end method

.method private b(Lcom/google/android/gms/common/api/aa;)V
    .locals 3

    .prologue
    .line 413
    iput-object p1, p0, Lcom/google/android/gms/common/api/f;->g:Lcom/google/android/gms/common/api/aa;

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/f;->c:Lcom/google/android/gms/common/internal/u;

    .line 415
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 418
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->g:Lcom/google/android/gms/common/api/aa;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/aa;->b()Lcom/google/android/gms/common/api/Status;

    .line 419
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->f:Lcom/google/android/gms/common/api/ab;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->b:Lcom/google/android/gms/common/api/h;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h;->a()V

    .line 421
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/f;->i:Z

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->b:Lcom/google/android/gms/common/api/h;

    iget-object v1, p0, Lcom/google/android/gms/common/api/f;->f:Lcom/google/android/gms/common/api/ab;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;->f()Lcom/google/android/gms/common/api/aa;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/h;->a(Lcom/google/android/gms/common/api/ab;Lcom/google/android/gms/common/api/aa;)V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 430
    return-void
.end method

.method private e()Z
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Lcom/google/android/gms/common/api/aa;
    .locals 3

    .prologue
    .line 235
    iget-object v1, p0, Lcom/google/android/gms/common/api/f;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/f;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Result has already been consumed."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 237
    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;->e()Z

    move-result v0

    const-string v2, "Result is not ready."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->g:Lcom/google/android/gms/common/api/aa;

    .line 239
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/f;->c()V

    .line 240
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 362
    iget-object v1, p0, Lcom/google/android/gms/common/api/f;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 363
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/f;->i:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 395
    iget-object v1, p0, Lcom/google/android/gms/common/api/f;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 396
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    sget-object v0, Lcom/google/android/gms/common/api/Status;->b:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/f;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/f;->a(Lcom/google/android/gms/common/api/aa;)V

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/f;->j:Z

    .line 400
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 404
    iget-object v1, p0, Lcom/google/android/gms/common/api/f;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 405
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    sget-object v0, Lcom/google/android/gms/common/api/Status;->d:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/f;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/f;->a(Lcom/google/android/gms/common/api/aa;)V

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/f;->j:Z

    .line 409
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/api/aa;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 247
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "await must not be called on the UI thread"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 249
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/f;->h:Z

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "Result has already been consumed"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;->e()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 256
    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;->f()Lcom/google/android/gms/common/api/aa;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 247
    goto :goto_0

    :cond_1
    move v1, v2

    .line 249
    goto :goto_1

    .line 253
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;->h()V

    goto :goto_2
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/aa;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 262
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "await must not be called on the UI thread when time is greater than zero."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 264
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/f;->h:Z

    if-nez v0, :cond_3

    :goto_1
    const-string v0, "Result has already been consumed."

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 267
    if-nez v0, :cond_1

    .line 268
    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;->i()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;->e()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 274
    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;->f()Lcom/google/android/gms/common/api/aa;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v1

    .line 262
    goto :goto_0

    :cond_3
    move v2, v1

    .line 264
    goto :goto_1

    .line 271
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;->h()V

    goto :goto_2
.end method

.method protected abstract a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;
.end method

.method public final a(Lcom/google/android/gms/common/api/aa;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 373
    iget-object v3, p0, Lcom/google/android/gms/common/api/f;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 374
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/f;->j:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/f;->i:Z

    if-eqz v2, :cond_1

    .line 375
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/aa;)V

    .line 376
    monitor-exit v3

    .line 382
    :goto_0
    return-void

    .line 378
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;->e()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_1
    const-string v4, "Results have already been set"

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 379
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/f;->h:Z

    if-nez v2, :cond_3

    :goto_2
    const-string v1, "Result has already been consumed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 381
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/f;->b(Lcom/google/android/gms/common/api/aa;)V

    .line 382
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    move v2, v1

    .line 378
    goto :goto_1

    :cond_3
    move v0, v1

    .line 379
    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/common/api/ab;)V
    .locals 3

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/f;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 281
    iget-object v1, p0, Lcom/google/android/gms/common/api/f;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 282
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    monitor-exit v1

    .line 291
    :goto_1
    return-void

    .line 280
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->b:Lcom/google/android/gms/common/api/h;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;->f()Lcom/google/android/gms/common/api/aa;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/h;->a(Lcom/google/android/gms/common/api/ab;Lcom/google/android/gms/common/api/aa;)V

    .line 291
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 289
    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/common/api/f;->f:Lcom/google/android/gms/common/api/ab;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method protected final a(Lcom/google/android/gms/common/api/h;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/google/android/gms/common/api/f;->b:Lcom/google/android/gms/common/api/h;

    .line 437
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 186
    check-cast p1, Lcom/google/android/gms/common/api/aa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/f;->a(Lcom/google/android/gms/common/api/aa;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 340
    iget-object v1, p0, Lcom/google/android/gms/common/api/f;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/f;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/f;->h:Z

    if-eqz v0, :cond_1

    .line 343
    :cond_0
    monitor-exit v1

    .line 357
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->c:Lcom/google/android/gms/common/internal/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 347
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->c:Lcom/google/android/gms/common/internal/u;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/u;->a()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->g:Lcom/google/android/gms/common/api/aa;

    invoke-static {v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/aa;)V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/f;->f:Lcom/google/android/gms/common/api/ab;

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/f;->i:Z

    .line 356
    sget-object v0, Lcom/google/android/gms/common/api/Status;->e:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/f;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/f;->b(Lcom/google/android/gms/common/api/aa;)V

    .line 357
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/f;->h:Z

    .line 390
    iput-object v1, p0, Lcom/google/android/gms/common/api/f;->g:Lcom/google/android/gms/common/api/aa;

    .line 391
    iput-object v1, p0, Lcom/google/android/gms/common/api/f;->f:Lcom/google/android/gms/common/api/ab;

    .line 392
    return-void
.end method
