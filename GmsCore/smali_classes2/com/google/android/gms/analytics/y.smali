.class final Lcom/google/android/gms/analytics/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/analytics/bl;
.implements Lcom/google/android/gms/analytics/e;
.implements Lcom/google/android/gms/analytics/f;


# instance fields
.field volatile a:J

.field volatile b:Lcom/google/android/gms/analytics/ab;

.field final c:Ljava/util/Queue;

.field volatile d:Ljava/util/Timer;

.field e:Lcom/google/android/gms/common/util/i;

.field f:J

.field private volatile g:Lcom/google/android/gms/analytics/b;

.field private h:Lcom/google/android/gms/analytics/g;

.field private i:Lcom/google/android/gms/analytics/g;

.field private final j:Lcom/google/android/gms/analytics/ap;

.field private final k:Lcom/google/android/gms/analytics/i;

.field private final l:Landroid/content/Context;

.field private volatile m:I

.field private volatile n:Ljava/util/Timer;

.field private volatile o:Ljava/util/Timer;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/i;)V
    .locals 1

    .prologue
    .line 89
    invoke-static {p1}, Lcom/google/android/gms/analytics/ap;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/ap;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/analytics/y;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/i;Lcom/google/android/gms/analytics/ap;)V

    .line 90
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/i;Lcom/google/android/gms/analytics/ap;)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->c:Ljava/util/Queue;

    .line 73
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/y;->f:J

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->i:Lcom/google/android/gms/analytics/g;

    .line 80
    iput-object p1, p0, Lcom/google/android/gms/analytics/y;->l:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/google/android/gms/analytics/y;->k:Lcom/google/android/gms/analytics/i;

    .line 82
    iput-object p3, p0, Lcom/google/android/gms/analytics/y;->j:Lcom/google/android/gms/analytics/ap;

    .line 83
    invoke-static {}, Lcom/google/android/gms/common/util/j;->c()Lcom/google/android/gms/common/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->e:Lcom/google/android/gms/common/util/i;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/analytics/y;->m:I

    .line 85
    sget-object v0, Lcom/google/android/gms/analytics/ab;->g:Lcom/google/android/gms/analytics/ab;

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/ab;

    .line 86
    return-void
.end method

.method private static a(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 187
    if-eqz p0, :cond_0

    .line 188
    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    .line 190
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->n:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/android/gms/analytics/y;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->n:Ljava/util/Timer;

    .line 195
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->o:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/android/gms/analytics/y;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->o:Ljava/util/Timer;

    .line 196
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->d:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/android/gms/analytics/y;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->d:Ljava/util/Timer;

    .line 197
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->h:Lcom/google/android/gms/analytics/g;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/g;->b()V

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/y;->p:Z

    .line 305
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->n:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/android/gms/analytics/y;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->n:Ljava/util/Timer;

    .line 419
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Service Reconnect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->n:Ljava/util/Timer;

    .line 420
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->n:Ljava/util/Timer;

    new-instance v1, Lcom/google/android/gms/analytics/af;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/analytics/af;-><init>(Lcom/google/android/gms/analytics/y;B)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 421
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->o:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/android/gms/analytics/y;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->o:Ljava/util/Timer;

    .line 369
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/analytics/y;->m:I

    .line 370
    const-string v0, "Connected to service"

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 371
    sget-object v0, Lcom/google/android/gms/analytics/ab;->b:Lcom/google/android/gms/analytics/ab;

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/ab;

    .line 373
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/y;->r:Z

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/y;->i()V

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/y;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :goto_0
    monitor-exit p0

    return-void

    .line 379
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/y;->f()V

    .line 380
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->d:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/android/gms/analytics/y;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->d:Ljava/util/Timer;

    .line 381
    new-instance v0, Ljava/util/Timer;

    const-string v1, "disconnect check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->d:Ljava/util/Timer;

    .line 382
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->d:Ljava/util/Timer;

    new-instance v1, Lcom/google/android/gms/analytics/ac;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/analytics/ac;-><init>(Lcom/google/android/gms/analytics/y;B)V

    iget-wide v2, p0, Lcom/google/android/gms/analytics/y;->f:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 2

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/ab;->e:Lcom/google/android/gms/analytics/ab;

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/ab;

    .line 408
    iget v0, p0, Lcom/google/android/gms/analytics/y;->m:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service unavailable (code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), will retry."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 410
    invoke-direct {p0}, Lcom/google/android/gms/analytics/y;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :goto_0
    monitor-exit p0

    return-void

    .line 412
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service unavailable (code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), using local store."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/y;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 8

    .prologue
    .line 102
    const-string v0, "putHit called"

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 104
    iget-object v6, p0, Lcom/google/android/gms/analytics/y;->c:Ljava/util/Queue;

    new-instance v0, Lcom/google/android/gms/analytics/ae;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/analytics/ae;-><init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/y;->f()V

    .line 106
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/ab;

    sget-object v1, Lcom/google/android/gms/analytics/ab;->d:Lcom/google/android/gms/analytics/ab;

    if-ne v0, v1, :cond_0

    .line 388
    const-string v0, "Service blocked."

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 389
    invoke-direct {p0}, Lcom/google/android/gms/analytics/y;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :goto_0
    monitor-exit p0

    return-void

    .line 390
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/ab;

    sget-object v1, Lcom/google/android/gms/analytics/ab;->f:Lcom/google/android/gms/analytics/ab;

    if-ne v0, v1, :cond_1

    .line 391
    const-string v0, "Disconnected from service"

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Lcom/google/android/gms/analytics/y;->j()V

    .line 393
    sget-object v0, Lcom/google/android/gms/analytics/ab;->g:Lcom/google/android/gms/analytics/ab;

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/ab;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 395
    :cond_1
    :try_start_2
    const-string v0, "Unexpected disconnect."

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 396
    sget-object v0, Lcom/google/android/gms/analytics/ab;->e:Lcom/google/android/gms/analytics/ab;

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/ab;

    .line 397
    iget v0, p0, Lcom/google/android/gms/analytics/y;->m:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 398
    invoke-direct {p0}, Lcom/google/android/gms/analytics/y;->l()V

    goto :goto_0

    .line 400
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/y;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/google/android/gms/analytics/aa;->a:[I

    iget-object v1, p0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/ab;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/ab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/y;->p:Z

    .line 120
    :goto_0
    :pswitch_0
    return-void

    .line 112
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/y;->k()V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized d()V
    .locals 2

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/y;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 165
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 147
    :cond_0
    :try_start_1
    const-string v0, "setForceLocalDispatch called."

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/y;->s:Z

    .line 154
    sget-object v0, Lcom/google/android/gms/analytics/aa;->a:[I

    iget-object v1, p0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/ab;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/ab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 159
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/y;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 164
    :pswitch_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/y;->r:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->g:Lcom/google/android/gms/analytics/b;

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v0, Lcom/google/android/gms/analytics/c;

    iget-object v1, p0, Lcom/google/android/gms/analytics/y;->l:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/analytics/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/e;Lcom/google/android/gms/analytics/f;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->g:Lcom/google/android/gms/analytics/b;

    .line 209
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/y;->h()V

    goto :goto_0
.end method

.method final declared-synchronized f()V
    .locals 8

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/analytics/y;->k:Lcom/google/android/gms/analytics/i;

    invoke-interface {v3}, Lcom/google/android/gms/analytics/i;->d()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/google/android/gms/analytics/y;->k:Lcom/google/android/gms/analytics/i;

    invoke-interface {v2}, Lcom/google/android/gms/analytics/i;->c()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/analytics/z;

    invoke-direct {v3, p0}, Lcom/google/android/gms/analytics/z;-><init>(Lcom/google/android/gms/analytics/y;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 249
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/analytics/y;->q:Z

    if-eqz v2, :cond_2

    .line 250
    const-string v2, "clearHits called"

    invoke-static {v2}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/y;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    sget-object v2, Lcom/google/android/gms/analytics/aa;->a:[I

    iget-object v3, p0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/ab;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/ab;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/analytics/y;->q:Z

    .line 252
    :cond_2
    :goto_1
    sget-object v2, Lcom/google/android/gms/analytics/aa;->a:[I

    iget-object v3, p0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/ab;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/ab;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    :pswitch_0
    goto :goto_0

    .line 258
    :goto_2
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/analytics/y;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 259
    iget-object v2, p0, Lcom/google/android/gms/analytics/y;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/analytics/ae;

    move-object v7, v0

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending hit to store  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 262
    iget-object v2, p0, Lcom/google/android/gms/analytics/y;->h:Lcom/google/android/gms/analytics/g;

    iget-object v3, v7, Lcom/google/android/gms/analytics/ae;->a:Ljava/util/Map;

    iget-wide v4, v7, Lcom/google/android/gms/analytics/ae;->b:J

    iget-object v6, v7, Lcom/google/android/gms/analytics/ae;->c:Ljava/lang/String;

    iget-object v7, v7, Lcom/google/android/gms/analytics/ae;->d:Ljava/util/List;

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/analytics/g;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 240
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 250
    :pswitch_2
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/analytics/y;->h:Lcom/google/android/gms/analytics/g;

    invoke-interface {v2}, Lcom/google/android/gms/analytics/g;->a()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/analytics/y;->q:Z

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/google/android/gms/analytics/y;->g:Lcom/google/android/gms/analytics/b;

    invoke-interface {v2}, Lcom/google/android/gms/analytics/b;->a()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/analytics/y;->q:Z

    goto :goto_1

    .line 254
    :pswitch_4
    const-string v2, "Blocked. Dropping hits."

    invoke-static {v2}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Lcom/google/android/gms/analytics/y;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    goto :goto_0

    .line 267
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gms/analytics/y;->p:Z

    if-eqz v2, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/google/android/gms/analytics/y;->k()V

    goto/16 :goto_0

    .line 272
    :goto_3
    :pswitch_5
    iget-object v2, p0, Lcom/google/android/gms/analytics/y;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 273
    iget-object v2, p0, Lcom/google/android/gms/analytics/y;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/analytics/ae;

    move-object v7, v0

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending hit to service   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 276
    iget-object v2, p0, Lcom/google/android/gms/analytics/y;->j:Lcom/google/android/gms/analytics/ap;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/ap;->b()Z

    move-result v2

    if-nez v2, :cond_4

    .line 277
    iget-object v2, p0, Lcom/google/android/gms/analytics/y;->g:Lcom/google/android/gms/analytics/b;

    iget-object v3, v7, Lcom/google/android/gms/analytics/ae;->a:Ljava/util/Map;

    iget-wide v4, v7, Lcom/google/android/gms/analytics/ae;->b:J

    iget-object v6, v7, Lcom/google/android/gms/analytics/ae;->c:Ljava/lang/String;

    iget-object v7, v7, Lcom/google/android/gms/analytics/ae;->d:Ljava/util/List;

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/analytics/b;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    .line 283
    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/analytics/y;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_3

    .line 281
    :cond_4
    const-string v2, "Dry run enabled. Hit not actually sent to service."

    invoke-static {v2}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    goto :goto_4

    .line 285
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/analytics/y;->e:Lcom/google/android/gms/common/util/i;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/analytics/y;->a:J

    goto/16 :goto_0

    .line 288
    :pswitch_6
    const-string v2, "Need to reconnect"

    invoke-static {v2}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/google/android/gms/analytics/y;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/y;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 252
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method final declared-synchronized g()V
    .locals 3

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/ab;

    sget-object v1, Lcom/google/android/gms/analytics/ab;->c:Lcom/google/android/gms/analytics/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 337
    :goto_0
    monitor-exit p0

    return-void

    .line 319
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->l:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v0, "com.google.android.gms"

    iget-object v1, p0, Lcom/google/android/gms/analytics/y;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    sget-object v0, Lcom/google/android/gms/analytics/ab;->d:Lcom/google/android/gms/analytics/ab;

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/ab;

    .line 322
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->g:Lcom/google/android/gms/analytics/b;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/b;->c()V

    .line 323
    const-string v0, "Attempted to fall back to local store from service."

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 326
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/gms/analytics/y;->j()V

    .line 327
    const-string v0, "falling back to local store"

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->i:Lcom/google/android/gms/analytics/g;

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->i:Lcom/google/android/gms/analytics/g;

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->h:Lcom/google/android/gms/analytics/g;

    .line 335
    :goto_1
    sget-object v0, Lcom/google/android/gms/analytics/ab;->c:Lcom/google/android/gms/analytics/ab;

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/ab;

    .line 336
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/y;->f()V

    goto :goto_0

    .line 331
    :cond_2
    invoke-static {}, Lcom/google/android/gms/analytics/v;->a()Lcom/google/android/gms/analytics/v;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/google/android/gms/analytics/y;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/analytics/y;->k:Lcom/google/android/gms/analytics/i;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/v;->a(Landroid/content/Context;Lcom/google/android/gms/analytics/i;)V

    .line 333
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/v;->b()Lcom/google/android/gms/analytics/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->h:Lcom/google/android/gms/analytics/g;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method final declared-synchronized h()V
    .locals 4

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/y;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->g:Lcom/google/android/gms/analytics/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/ab;

    sget-object v1, Lcom/google/android/gms/analytics/ab;->c:Lcom/google/android/gms/analytics/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 342
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/analytics/y;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/analytics/y;->m:I

    .line 343
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->o:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/android/gms/analytics/y;->a(Ljava/util/Timer;)Ljava/util/Timer;

    .line 344
    sget-object v0, Lcom/google/android/gms/analytics/ab;->a:Lcom/google/android/gms/analytics/ab;

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/ab;

    .line 345
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Failed Connect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->o:Ljava/util/Timer;

    .line 346
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->o:Ljava/util/Timer;

    new-instance v1, Lcom/google/android/gms/analytics/ad;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/analytics/ad;-><init>(Lcom/google/android/gms/analytics/y;B)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 347
    const-string v0, "connecting to Analytics service"

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->g:Lcom/google/android/gms/analytics/b;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/b;->b()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    :goto_0
    monitor-exit p0

    return-void

    .line 350
    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "security exception on connectToService"

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/y;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 354
    :cond_0
    :try_start_3
    const-string v0, "client not initialized."

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/y;->g()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method final declared-synchronized i()V
    .locals 2

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->g:Lcom/google/android/gms/analytics/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/ab;

    sget-object v1, Lcom/google/android/gms/analytics/ab;->b:Lcom/google/android/gms/analytics/ab;

    if-ne v0, v1, :cond_0

    .line 361
    sget-object v0, Lcom/google/android/gms/analytics/ab;->f:Lcom/google/android/gms/analytics/ab;

    iput-object v0, p0, Lcom/google/android/gms/analytics/y;->b:Lcom/google/android/gms/analytics/ab;

    .line 362
    iget-object v0, p0, Lcom/google/android/gms/analytics/y;->g:Lcom/google/android/gms/analytics/b;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :cond_0
    monitor-exit p0

    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
