.class final Lcom/google/android/location/collectionlib/aa;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/u;

.field private final b:Ljava/util/concurrent/CountDownLatch;

.field private volatile c:Landroid/os/Handler;

.field private volatile d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/location/collectionlib/u;)V
    .locals 2

    .prologue
    .line 513
    iput-object p1, p0, Lcom/google/android/location/collectionlib/aa;->a:Lcom/google/android/location/collectionlib/u;

    .line 514
    const-string v0, "SensorBatchThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 509
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/aa;->b:Ljava/util/concurrent/CountDownLatch;

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/aa;->d:Z

    .line 515
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 518
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/aa;->start()V

    .line 520
    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/collectionlib/aa;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 521
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/location/collectionlib/aa;->d:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/android/location/collectionlib/aa;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public final c()V
    .locals 6

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/aa;->d:Z

    if-nez v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/aa;->a:Lcom/google/android/location/collectionlib/u;

    iget-object v1, v0, Lcom/google/android/location/collectionlib/u;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/aa;->a:Lcom/google/android/location/collectionlib/u;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/u;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/x;

    .line 550
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/location/collectionlib/aa;->a:Lcom/google/android/location/collectionlib/u;

    iget-object v3, v3, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DataReader "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " started by shutdown."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 551
    :cond_1
    iget-object v3, p0, Lcom/google/android/location/collectionlib/aa;->c:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 553
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/collectionlib/aa;->a:Lcom/google/android/location/collectionlib/u;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/u;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 554
    iget-object v0, p0, Lcom/google/android/location/collectionlib/aa;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 555
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 530
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 531
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/aa;->c:Landroid/os/Handler;

    .line 532
    iget-object v0, p0, Lcom/google/android/location/collectionlib/aa;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 533
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 534
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/aa;->a:Lcom/google/android/location/collectionlib/u;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/aa;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " quitted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 535
    :cond_0
    return-void
.end method
