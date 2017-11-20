.class final Lcom/google/common/cache/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/ah;


# instance fields
.field volatile a:Lcom/google/common/cache/ah;

.field final b:Lcom/google/common/util/concurrent/s;

.field final c:Lcom/google/common/base/as;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3423
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/ah;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/cache/w;-><init>(Lcom/google/common/cache/ah;)V

    .line 3424
    return-void
.end method

.method public constructor <init>(Lcom/google/common/cache/ah;)V
    .locals 1

    .prologue
    .line 3426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3419
    invoke-static {}, Lcom/google/common/util/concurrent/s;->a()Lcom/google/common/util/concurrent/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/w;->b:Lcom/google/common/util/concurrent/s;

    .line 3420
    new-instance v0, Lcom/google/common/base/as;

    invoke-direct {v0}, Lcom/google/common/base/as;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/w;->c:Lcom/google/common/base/as;

    .line 3427
    iput-object p1, p0, Lcom/google/common/cache/w;->a:Lcom/google/common/cache/ah;

    .line 3428
    return-void
.end method

.method private static a(Lcom/google/common/util/concurrent/s;Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 3452
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/s;->setException(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3455
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/m;
    .locals 1

    .prologue
    .line 3460
    invoke-static {}, Lcom/google/common/util/concurrent/s;->a()Lcom/google/common/util/concurrent/s;

    move-result-object v0

    .line 3461
    invoke-static {v0, p0}, Lcom/google/common/cache/w;->a(Lcom/google/common/util/concurrent/s;Ljava/lang/Throwable;)Z

    .line 3462
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 3439
    iget-object v0, p0, Lcom/google/common/cache/w;->a:Lcom/google/common/cache/ah;

    invoke-interface {v0}, Lcom/google/common/cache/ah;->a()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/y;)Lcom/google/common/cache/ah;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3520
    return-object p0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/m;
    .locals 2

    .prologue
    .line 3479
    iget-object v0, p0, Lcom/google/common/cache/w;->c:Lcom/google/common/base/as;

    invoke-virtual {v0}, Lcom/google/common/base/as;->a()Lcom/google/common/base/as;

    .line 3480
    iget-object v0, p0, Lcom/google/common/cache/w;->a:Lcom/google/common/cache/ah;

    invoke-interface {v0}, Lcom/google/common/cache/ah;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3482
    if-nez v0, :cond_2

    .line 3483
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/google/common/cache/CacheLoader;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3484
    invoke-virtual {p0, v0}, Lcom/google/common/cache/w;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/common/cache/w;->b:Lcom/google/common/util/concurrent/s;

    .line 3494
    :cond_0
    :goto_0
    return-object v0

    .line 3484
    :cond_1
    invoke-static {v0}, Lcom/google/common/util/concurrent/f;->a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/m;

    move-result-object v0

    goto :goto_0

    .line 3486
    :cond_2
    invoke-virtual {p2, p1, v0}, Lcom/google/common/cache/CacheLoader;->reload(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/m;

    move-result-object v0

    .line 3488
    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/util/concurrent/f;->a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/m;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 3490
    :catch_0
    move-exception v0

    .line 3491
    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_3

    .line 3492
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 3494
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/common/cache/w;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/google/common/cache/w;->b:Lcom/google/common/util/concurrent/s;

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/google/common/cache/w;->b(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/m;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3466
    if-eqz p1, :cond_0

    .line 3469
    invoke-virtual {p0, p1}, Lcom/google/common/cache/w;->b(Ljava/lang/Object;)Z

    .line 3476
    :goto_0
    return-void

    .line 3472
    :cond_0
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/w;->a:Lcom/google/common/cache/ah;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 3447
    iget-object v0, p0, Lcom/google/common/cache/w;->b:Lcom/google/common/util/concurrent/s;

    invoke-static {v0, p1}, Lcom/google/common/cache/w;->a(Lcom/google/common/util/concurrent/s;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 3515
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3443
    iget-object v0, p0, Lcom/google/common/cache/w;->b:Lcom/google/common/util/concurrent/s;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/s;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 3431
    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 3435
    iget-object v0, p0, Lcom/google/common/cache/w;->a:Lcom/google/common/cache/ah;

    invoke-interface {v0}, Lcom/google/common/cache/ah;->d()Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3503
    iget-object v0, p0, Lcom/google/common/cache/w;->b:Lcom/google/common/util/concurrent/s;

    invoke-static {v0}, Lcom/google/common/util/concurrent/u;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 3499
    iget-object v0, p0, Lcom/google/common/cache/w;->c:Lcom/google/common/base/as;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/common/base/as;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()Lcom/google/common/cache/ah;
    .locals 1

    .prologue
    .line 3511
    iget-object v0, p0, Lcom/google/common/cache/w;->a:Lcom/google/common/cache/ah;

    return-object v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3507
    iget-object v0, p0, Lcom/google/common/cache/w;->a:Lcom/google/common/cache/ah;

    invoke-interface {v0}, Lcom/google/common/cache/ah;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
