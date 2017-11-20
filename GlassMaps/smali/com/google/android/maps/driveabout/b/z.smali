.class public final Lcom/google/android/maps/driveabout/b/z;
.super Lcom/google/android/maps/driveabout/util/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/nav/n;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/b/ac;

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Looper;

.field private final d:Lcom/google/android/maps/driveabout/b/x;

.field private e:Z

.field private f:Lcom/google/android/maps/driveabout/nav/w;

.field private g:Lcom/google/android/maps/driveabout/nav/ah;

.field private h:I

.field private i:Z

.field private final j:Lcom/google/android/maps/driveabout/store/ax;

.field private k:Z

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/store/ax;Lcom/google/android/maps/driveabout/b/x;)V
    .locals 2

    .prologue
    .line 116
    const-string v0, "TilePrefetcher"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/util/d;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/google/android/maps/driveabout/b/ac;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/b/ac;-><init>(Lcom/google/android/maps/driveabout/b/z;Lcom/google/android/maps/driveabout/b/aa;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/z;->a:Lcom/google/android/maps/driveabout/b/ac;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/b/z;->i:Z

    .line 117
    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/z;->j:Lcom/google/android/maps/driveabout/store/ax;

    .line 118
    iput-object p2, p0, Lcom/google/android/maps/driveabout/b/z;->d:Lcom/google/android/maps/driveabout/b/x;

    .line 119
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/b/z;->start()V

    .line 122
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/z;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 132
    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/z;->j:Lcom/google/android/maps/driveabout/store/ax;

    new-instance v1, Lcom/google/android/maps/driveabout/b/aa;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/b/aa;-><init>(Lcom/google/android/maps/driveabout/b/z;)V

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/store/ax;->a(Lcom/google/android/maps/driveabout/store/bw;)V

    .line 143
    return-void

    .line 126
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 151
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/b/z;->a(IILjava/lang/Object;)V

    .line 152
    return-void
.end method

.method private a(IILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/z;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/z;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 174
    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/maps/driveabout/b/z;->a(IILjava/lang/Object;)V

    .line 162
    return-void
.end method

.method private a(J)V
    .locals 2

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/b/z;->e:Z

    if-nez v0, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/b/z;->i:Z

    if-nez v0, :cond_0

    .line 427
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/b/z;->k:Z

    if-nez v0, :cond_0

    .line 429
    iget v0, p0, Lcom/google/android/maps/driveabout/b/z;->m:I

    if-gtz v0, :cond_0

    .line 431
    const-wide/16 v0, 0x4

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    .line 432
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/z;->j()V

    goto :goto_0

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/z;->b:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 435
    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/z;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/b/z;->k:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/b/z;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/z;->d()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/b/z;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/b/z;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/b/z;IILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/b/z;->a(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/b/z;Lcom/google/android/maps/driveabout/nav/ah;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/b/z;->a(Lcom/google/android/maps/driveabout/nav/ah;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/b/z;Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/b/z;->a(Lcom/google/android/maps/driveabout/nav/w;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/ah;I)V
    .locals 3

    .prologue
    .line 369
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/b/z;->i:Z

    .line 371
    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/z;->g:Lcom/google/android/maps/driveabout/nav/ah;

    .line 372
    iput p2, p0, Lcom/google/android/maps/driveabout/b/z;->h:I

    .line 373
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/z;->d:Lcom/google/android/maps/driveabout/b/x;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/z;->g:Lcom/google/android/maps/driveabout/nav/ah;

    iget v2, p0, Lcom/google/android/maps/driveabout/b/z;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/b/x;->a(Lcom/google/android/maps/driveabout/nav/ah;I)V

    .line 374
    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->a()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/l;->w()I

    move-result v0

    int-to-long v0, v0

    .line 374
    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/b/z;->a(J)V

    .line 377
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 2

    .prologue
    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/b/z;->i:Z

    .line 362
    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/z;->f:Lcom/google/android/maps/driveabout/nav/w;

    .line 363
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/z;->d:Lcom/google/android/maps/driveabout/b/x;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/z;->f:Lcom/google/android/maps/driveabout/nav/w;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/b/x;->a(Lcom/google/android/maps/driveabout/nav/w;)V

    .line 364
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/z;->f()V

    .line 365
    const-wide/16 v0, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/b/z;->a(J)V

    .line 366
    return-void
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 390
    iget v0, p0, Lcom/google/android/maps/driveabout/b/z;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/b/z;->m:I

    .line 391
    if-nez p1, :cond_0

    .line 392
    iget v0, p0, Lcom/google/android/maps/driveabout/b/z;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/b/z;->n:I

    .line 400
    :cond_0
    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->a()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v0

    .line 401
    iget v1, p0, Lcom/google/android/maps/driveabout/b/z;->n:I

    if-nez v1, :cond_1

    .line 402
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/l;->v()I

    move-result v0

    int-to-long v0, v0

    .line 401
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/b/z;->a(J)V

    .line 404
    return-void

    .line 403
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/l;->w()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/b/z;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/z;->e()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/b/z;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/b/z;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/b/z;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/z;->g()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/b/z;->e:Z

    .line 329
    const-wide/16 v0, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/b/z;->a(J)V

    .line 330
    return-void
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/b/z;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/z;->h()V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/b/z;->e:Z

    .line 334
    return-void
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/b/z;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/z;->i()V

    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/z;->d:Lcom/google/android/maps/driveabout/b/x;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/x;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_0

    .line 342
    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/z;->j:Lcom/google/android/maps/driveabout/store/ax;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/z;->a:Lcom/google/android/maps/driveabout/b/ac;

    sget-object v3, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->PREFETCH_ROUTE:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/google/android/maps/driveabout/store/ax;->a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/store/bt;Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;Z)V

    .line 344
    iget v0, p0, Lcom/google/android/maps/driveabout/b/z;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/b/z;->m:I

    .line 346
    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/z;->f:Lcom/google/android/maps/driveabout/nav/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/z;->g:Lcom/google/android/maps/driveabout/nav/ah;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/b/z;->h:I

    if-ltz v0, :cond_0

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/b/z;->i:Z

    .line 351
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/z;->d:Lcom/google/android/maps/driveabout/b/x;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/x;->b()V

    .line 352
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/z;->d:Lcom/google/android/maps/driveabout/b/x;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/z;->f:Lcom/google/android/maps/driveabout/nav/w;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/b/x;->a(Lcom/google/android/maps/driveabout/nav/w;)V

    .line 353
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/z;->d:Lcom/google/android/maps/driveabout/b/x;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/z;->g:Lcom/google/android/maps/driveabout/nav/ah;

    iget v2, p0, Lcom/google/android/maps/driveabout/b/z;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/b/x;->a(Lcom/google/android/maps/driveabout/nav/ah;I)V

    .line 354
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/z;->f()V

    .line 356
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/b/z;->a(J)V

    .line 358
    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/b/z;->k:Z

    .line 381
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/z;->j()V

    .line 382
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/b/z;->i:Z

    .line 413
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x190

    .line 444
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/b/z;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/b/z;->i:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/b/z;->m:I

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/z;->j:Lcom/google/android/maps/driveabout/store/ax;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/ax;->e()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 447
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/z;->k()V

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/google/android/maps/driveabout/b/z;->a(J)V

    goto :goto_0
.end method

.method private k()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 460
    iput v1, p0, Lcom/google/android/maps/driveabout/b/z;->n:I

    .line 461
    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->a()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/l;->u()I

    move-result v2

    move v0, v1

    .line 463
    :goto_0
    if-ge v0, v2, :cond_0

    .line 464
    iget-object v3, p0, Lcom/google/android/maps/driveabout/b/z;->d:Lcom/google/android/maps/driveabout/b/x;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/b/x;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v3

    .line 465
    if-nez v3, :cond_1

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/b/z;->i:Z

    .line 473
    :cond_0
    return-void

    .line 469
    :cond_1
    iget-object v4, p0, Lcom/google/android/maps/driveabout/b/z;->j:Lcom/google/android/maps/driveabout/store/ax;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/b/z;->a:Lcom/google/android/maps/driveabout/b/ac;

    sget-object v6, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->PREFETCH_ROUTE:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    invoke-interface {v4, v3, v5, v6, v1}, Lcom/google/android/maps/driveabout/store/ax;->a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/store/bt;Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;Z)V

    .line 471
    iget v3, p0, Lcom/google/android/maps/driveabout/b/z;->m:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/maps/driveabout/b/z;->m:I

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 282
    const/16 v0, 0xa

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 289
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/z;->c:Landroid/os/Looper;

    .line 290
    new-instance v0, Lcom/google/android/maps/driveabout/b/ab;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/b/ab;-><init>(Lcom/google/android/maps/driveabout/b/z;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/z;->b:Landroid/os/Handler;

    .line 321
    monitor-enter p0

    .line 322
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 323
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 325
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    const-string v1, "TilePrefetcherThread"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not set thread priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/b/z;->a(I)V

    .line 181
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/z;->c:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/z;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 193
    :cond_0
    return-void
.end method

.method public final onApproachingGuidanceEvent(Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public final onGuidanceEvent(Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public final onProgress(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/b/z;->l:I

    .line 240
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->a()I

    move-result v1

    sub-int/2addr v0, v1

    .line 241
    const/16 v1, 0x7530

    if-lt v0, v1, :cond_0

    .line 242
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/b/z;->l:I

    .line 243
    const/4 v0, 0x5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->d()I

    move-result v1

    .line 244
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v2

    .line 243
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/b/z;->a(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final onRerouteRequested(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 1

    .prologue
    .line 205
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/b/z;->a(I)V

    .line 206
    return-void
.end method

.method public final onRouteChanged(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 2

    .prologue
    .line 210
    const/4 v0, 0x4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/b/z;->a(ILjava/lang/Object;)V

    .line 211
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/b/z;->onStepChanged(Lcom/google/android/maps/driveabout/nav/p;)V

    .line 212
    return-void
.end method

.method public final onRouteCompletedSuccessfully(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 1

    .prologue
    .line 250
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/b/z;->a(I)V

    .line 251
    return-void
.end method

.method public final onRouteFailed(ILcom/google/android/maps/driveabout/nav/f;Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 1

    .prologue
    .line 216
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/b/z;->a(I)V

    .line 217
    return-void
.end method

.method public final onStepChanged(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 3

    .prologue
    .line 229
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/b/z;->l:I

    .line 230
    const/4 v0, 0x5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->d()I

    move-result v1

    .line 231
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v2

    .line 230
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/b/z;->a(IILjava/lang/Object;)V

    .line 232
    return-void
.end method

.method public final onTrafficStatusChanged(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 0

    .prologue
    .line 255
    return-void
.end method
