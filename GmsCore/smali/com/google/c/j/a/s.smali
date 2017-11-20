.class final Lcom/google/c/j/a/s;
.super Lcom/google/c/j/a/b;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/google/c/j/a/e;

.field private b:Lcom/google/c/j/a/v;

.field private volatile c:Lcom/google/c/j/a/v;

.field private final d:Ljava/util/concurrent/BlockingQueue;

.field private final e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Lcom/google/c/j/a/e;Lcom/google/c/j/a/v;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 598
    invoke-direct {p0}, Lcom/google/c/j/a/b;-><init>()V

    .line 592
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/c/j/a/s;->d:Ljava/util/concurrent/BlockingQueue;

    .line 594
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/c/j/a/s;->e:Ljava/util/concurrent/CountDownLatch;

    .line 599
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/j/a/e;

    iput-object v0, p0, Lcom/google/c/j/a/s;->a:Lcom/google/c/j/a/e;

    .line 600
    invoke-static {p2}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/j/a/v;

    iput-object v0, p0, Lcom/google/c/j/a/s;->b:Lcom/google/c/j/a/v;

    .line 601
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/c/j/a/e;Lcom/google/c/j/a/v;B)V
    .locals 0

    .prologue
    .line 586
    invoke-direct {p0, p1, p2}, Lcom/google/c/j/a/s;-><init>(Lcom/google/c/j/a/e;Lcom/google/c/j/a/v;)V

    return-void
.end method

.method static synthetic a(Lcom/google/c/j/a/s;)Lcom/google/c/j/a/v;
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/c/j/a/s;->c:Lcom/google/c/j/a/v;

    return-object v0
.end method

.method private static a(Ljava/util/concurrent/Future;Z)V
    .locals 0

    .prologue
    .line 706
    if-eqz p0, :cond_0

    .line 707
    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 709
    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 693
    invoke-super {p0, p1}, Lcom/google/c/j/a/b;->cancel(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 696
    iget-object v2, p0, Lcom/google/c/j/a/s;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_0
    :try_start_0
    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 697
    :cond_0
    iget-object v1, p0, Lcom/google/c/j/a/s;->b:Lcom/google/c/j/a/v;

    invoke-static {v1, p1}, Lcom/google/c/j/a/s;->a(Ljava/util/concurrent/Future;Z)V

    .line 698
    iget-object v1, p0, Lcom/google/c/j/a/s;->c:Lcom/google/c/j/a/v;

    invoke-static {v1, p1}, Lcom/google/c/j/a/s;->a(Ljava/util/concurrent/Future;Z)V

    .line 701
    :goto_1
    return v0

    .line 696
    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw v0

    :cond_2
    move v0, v1

    .line 701
    goto :goto_1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/google/c/j/a/s;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/google/c/j/a/s;->b:Lcom/google/c/j/a/v;

    .line 616
    if-eqz v0, :cond_0

    .line 617
    invoke-interface {v0}, Lcom/google/c/j/a/v;->get()Ljava/lang/Object;

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/google/c/j/a/s;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 630
    iget-object v0, p0, Lcom/google/c/j/a/s;->c:Lcom/google/c/j/a/v;

    .line 631
    if-eqz v0, :cond_1

    .line 632
    invoke-interface {v0}, Lcom/google/c/j/a/v;->get()Ljava/lang/Object;

    .line 635
    :cond_1
    invoke-super {p0}, Lcom/google/c/j/a/b;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 646
    invoke-virtual {p0}, Lcom/google/c/j/a/s;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 649
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    if-eq p3, v0, :cond_0

    .line 650
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    .line 651
    sget-object p3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/google/c/j/a/s;->b:Lcom/google/c/j/a/v;

    .line 659
    if-eqz v0, :cond_1

    .line 660
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 661
    invoke-interface {v0, p1, p2, p3}, Lcom/google/c/j/a/v;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 662
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 668
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 669
    iget-object v2, p0, Lcom/google/c/j/a/s;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 670
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 672
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 679
    iget-object v0, p0, Lcom/google/c/j/a/s;->c:Lcom/google/c/j/a/v;

    .line 680
    if-eqz v0, :cond_3

    .line 681
    invoke-interface {v0, p1, p2, p3}, Lcom/google/c/j/a/v;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 684
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/google/c/j/a/b;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/google/c/j/a/s;->b:Lcom/google/c/j/a/v;

    invoke-static {v0}, Lcom/google/c/j/a/af;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 729
    :try_start_1
    iget-object v1, p0, Lcom/google/c/j/a/s;->a:Lcom/google/c/j/a/e;

    invoke-interface {v1, v0}, Lcom/google/c/j/a/e;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v1

    iput-object v1, p0, Lcom/google/c/j/a/s;->c:Lcom/google/c/j/a/v;

    .line 731
    invoke-virtual {p0}, Lcom/google/c/j/a/s;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/google/c/j/a/s;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-static {v0}, Lcom/google/c/j/a/af;->a(Ljava/util/concurrent/BlockingQueue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/c/j/a/v;->cancel(Z)Z

    .line 739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/c/j/a/s;->c:Lcom/google/c/j/a/v;
    :try_end_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 777
    iput-object v3, p0, Lcom/google/c/j/a/s;->a:Lcom/google/c/j/a/e;

    .line 778
    iput-object v3, p0, Lcom/google/c/j/a/s;->b:Lcom/google/c/j/a/v;

    .line 780
    iget-object v0, p0, Lcom/google/c/j/a/s;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 781
    :goto_0
    return-void

    .line 721
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/c/j/a/s;->cancel(Z)Z
    :try_end_2
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 777
    iput-object v3, p0, Lcom/google/c/j/a/s;->a:Lcom/google/c/j/a/e;

    .line 778
    iput-object v3, p0, Lcom/google/c/j/a/s;->b:Lcom/google/c/j/a/v;

    .line 780
    iget-object v0, p0, Lcom/google/c/j/a/s;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 723
    :catch_1
    move-exception v0

    .line 725
    :try_start_3
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/c/j/a/s;->a(Ljava/lang/Throwable;)Z
    :try_end_3
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 777
    iput-object v3, p0, Lcom/google/c/j/a/s;->a:Lcom/google/c/j/a/e;

    .line 778
    iput-object v3, p0, Lcom/google/c/j/a/s;->b:Lcom/google/c/j/a/v;

    .line 780
    iget-object v0, p0, Lcom/google/c/j/a/s;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 742
    :cond_0
    :try_start_4
    new-instance v0, Lcom/google/c/j/a/t;

    invoke-direct {v0, p0, v1}, Lcom/google/c/j/a/t;-><init>(Lcom/google/c/j/a/s;Lcom/google/c/j/a/v;)V

    invoke-static {}, Lcom/google/c/j/a/z;->a()Lcom/google/c/j/a/x;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/c/j/a/v;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_4
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 777
    iput-object v3, p0, Lcom/google/c/j/a/s;->a:Lcom/google/c/j/a/e;

    .line 778
    iput-object v3, p0, Lcom/google/c/j/a/s;->b:Lcom/google/c/j/a/v;

    .line 780
    iget-object v0, p0, Lcom/google/c/j/a/s;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 765
    :catch_2
    move-exception v0

    .line 767
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/reflect/UndeclaredThrowableException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/c/j/a/s;->a(Ljava/lang/Throwable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 777
    iput-object v3, p0, Lcom/google/c/j/a/s;->a:Lcom/google/c/j/a/e;

    .line 778
    iput-object v3, p0, Lcom/google/c/j/a/s;->b:Lcom/google/c/j/a/v;

    .line 780
    iget-object v0, p0, Lcom/google/c/j/a/s;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 768
    :catch_3
    move-exception v0

    .line 771
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/google/c/j/a/s;->a(Ljava/lang/Throwable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 777
    iput-object v3, p0, Lcom/google/c/j/a/s;->a:Lcom/google/c/j/a/e;

    .line 778
    iput-object v3, p0, Lcom/google/c/j/a/s;->b:Lcom/google/c/j/a/v;

    .line 780
    iget-object v0, p0, Lcom/google/c/j/a/s;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 772
    :catch_4
    move-exception v0

    .line 774
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/google/c/j/a/s;->a(Ljava/lang/Throwable;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 777
    iput-object v3, p0, Lcom/google/c/j/a/s;->a:Lcom/google/c/j/a/e;

    .line 778
    iput-object v3, p0, Lcom/google/c/j/a/s;->b:Lcom/google/c/j/a/v;

    .line 780
    iget-object v0, p0, Lcom/google/c/j/a/s;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 777
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/c/j/a/s;->a:Lcom/google/c/j/a/e;

    .line 778
    iput-object v3, p0, Lcom/google/c/j/a/s;->b:Lcom/google/c/j/a/v;

    .line 780
    iget-object v1, p0, Lcom/google/c/j/a/s;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
