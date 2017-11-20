.class final Lcom/google/common/util/concurrent/k;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/google/common/util/concurrent/b;

.field private b:Lcom/google/common/util/concurrent/o;

.field private volatile c:Lcom/google/common/util/concurrent/o;

.field private final d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/b;Lcom/google/common/util/concurrent/o;)V
    .locals 2

    .prologue
    .line 788
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 785
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/k;->d:Ljava/util/concurrent/CountDownLatch;

    .line 789
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/b;

    iput-object v0, p0, Lcom/google/common/util/concurrent/k;->a:Lcom/google/common/util/concurrent/b;

    .line 790
    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/o;

    iput-object v0, p0, Lcom/google/common/util/concurrent/k;->b:Lcom/google/common/util/concurrent/o;

    .line 791
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/b;Lcom/google/common/util/concurrent/o;Lcom/google/common/util/concurrent/g;)V
    .locals 0

    .prologue
    .line 780
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/k;-><init>(Lcom/google/common/util/concurrent/b;Lcom/google/common/util/concurrent/o;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/k;Lcom/google/common/util/concurrent/o;)Lcom/google/common/util/concurrent/o;
    .locals 0

    .prologue
    .line 780
    iput-object p1, p0, Lcom/google/common/util/concurrent/k;->c:Lcom/google/common/util/concurrent/o;

    return-object p1
.end method

.method private static a(Ljava/util/concurrent/Future;Z)V
    .locals 0

    .prologue
    .line 810
    if-eqz p0, :cond_0

    .line 811
    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 813
    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    .prologue
    .line 799
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/google/common/util/concurrent/k;->b:Lcom/google/common/util/concurrent/o;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/k;->a(Ljava/util/concurrent/Future;Z)V

    .line 803
    iget-object v0, p0, Lcom/google/common/util/concurrent/k;->c:Lcom/google/common/util/concurrent/o;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/k;->a(Ljava/util/concurrent/Future;Z)V

    .line 804
    const/4 v0, 0x1

    .line 806
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 819
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/k;->b:Lcom/google/common/util/concurrent/o;

    invoke-static {v0}, Lcom/google/common/util/concurrent/w;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 832
    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/k;->a:Lcom/google/common/util/concurrent/b;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/b;->apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/k;->c:Lcom/google/common/util/concurrent/o;

    .line 834
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/k;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 835
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/k;->wasInterrupted()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/o;->cancel(Z)Z

    .line 836
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/k;->c:Lcom/google/common/util/concurrent/o;
    :try_end_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 874
    iput-object v3, p0, Lcom/google/common/util/concurrent/k;->a:Lcom/google/common/util/concurrent/b;

    .line 875
    iput-object v3, p0, Lcom/google/common/util/concurrent/k;->b:Lcom/google/common/util/concurrent/o;

    .line 877
    iget-object v0, p0, Lcom/google/common/util/concurrent/k;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 879
    :goto_0
    return-void

    .line 824
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/k;->cancel(Z)Z
    :try_end_2
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 874
    iput-object v3, p0, Lcom/google/common/util/concurrent/k;->a:Lcom/google/common/util/concurrent/b;

    .line 875
    iput-object v3, p0, Lcom/google/common/util/concurrent/k;->b:Lcom/google/common/util/concurrent/o;

    .line 877
    iget-object v0, p0, Lcom/google/common/util/concurrent/k;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 826
    :catch_1
    move-exception v0

    .line 828
    :try_start_3
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/k;->setException(Ljava/lang/Throwable;)Z
    :try_end_3
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 874
    iput-object v3, p0, Lcom/google/common/util/concurrent/k;->a:Lcom/google/common/util/concurrent/b;

    .line 875
    iput-object v3, p0, Lcom/google/common/util/concurrent/k;->b:Lcom/google/common/util/concurrent/o;

    .line 877
    iget-object v0, p0, Lcom/google/common/util/concurrent/k;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 839
    :cond_0
    :try_start_4
    new-instance v1, Lcom/google/common/util/concurrent/l;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/l;-><init>(Lcom/google/common/util/concurrent/k;Lcom/google/common/util/concurrent/o;)V

    invoke-static {}, Lcom/google/common/util/concurrent/r;->a()Lcom/google/common/util/concurrent/q;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/o;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_4
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 874
    iput-object v3, p0, Lcom/google/common/util/concurrent/k;->a:Lcom/google/common/util/concurrent/b;

    .line 875
    iput-object v3, p0, Lcom/google/common/util/concurrent/k;->b:Lcom/google/common/util/concurrent/o;

    .line 877
    iget-object v0, p0, Lcom/google/common/util/concurrent/k;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 862
    :catch_2
    move-exception v0

    .line 864
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/reflect/UndeclaredThrowableException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/k;->setException(Ljava/lang/Throwable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 874
    iput-object v3, p0, Lcom/google/common/util/concurrent/k;->a:Lcom/google/common/util/concurrent/b;

    .line 875
    iput-object v3, p0, Lcom/google/common/util/concurrent/k;->b:Lcom/google/common/util/concurrent/o;

    .line 877
    iget-object v0, p0, Lcom/google/common/util/concurrent/k;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 865
    :catch_3
    move-exception v0

    .line 868
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/k;->setException(Ljava/lang/Throwable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 874
    iput-object v3, p0, Lcom/google/common/util/concurrent/k;->a:Lcom/google/common/util/concurrent/b;

    .line 875
    iput-object v3, p0, Lcom/google/common/util/concurrent/k;->b:Lcom/google/common/util/concurrent/o;

    .line 877
    iget-object v0, p0, Lcom/google/common/util/concurrent/k;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 869
    :catch_4
    move-exception v0

    .line 871
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/k;->setException(Ljava/lang/Throwable;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 874
    iput-object v3, p0, Lcom/google/common/util/concurrent/k;->a:Lcom/google/common/util/concurrent/b;

    .line 875
    iput-object v3, p0, Lcom/google/common/util/concurrent/k;->b:Lcom/google/common/util/concurrent/o;

    .line 877
    iget-object v0, p0, Lcom/google/common/util/concurrent/k;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 874
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/common/util/concurrent/k;->a:Lcom/google/common/util/concurrent/b;

    .line 875
    iput-object v3, p0, Lcom/google/common/util/concurrent/k;->b:Lcom/google/common/util/concurrent/o;

    .line 877
    iget-object v1, p0, Lcom/google/common/util/concurrent/k;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
