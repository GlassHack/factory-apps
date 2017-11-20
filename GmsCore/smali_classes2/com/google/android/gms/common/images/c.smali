.class final Lcom/google/android/gms/common/images/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/images/ImageManager;

.field private final b:Landroid/net/Uri;

.field private final c:Landroid/graphics/Bitmap;

.field private final d:Ljava/util/concurrent/CountDownLatch;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/google/android/gms/common/images/c;->a:Lcom/google/android/gms/common/images/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    iput-object p2, p0, Lcom/google/android/gms/common/images/c;->b:Landroid/net/Uri;

    .line 547
    iput-object p3, p0, Lcom/google/android/gms/common/images/c;->c:Landroid/graphics/Bitmap;

    .line 548
    iput-boolean p4, p0, Lcom/google/android/gms/common/images/c;->e:Z

    .line 549
    iput-object p5, p0, Lcom/google/android/gms/common/images/c;->d:Ljava/util/concurrent/CountDownLatch;

    .line 550
    return-void
.end method

.method private a(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;Z)V
    .locals 8

    .prologue
    .line 600
    invoke-static {p1}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->a(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;)Ljava/util/ArrayList;

    move-result-object v2

    .line 601
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 602
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/e;

    .line 603
    if-eqz p2, :cond_1

    .line 605
    iget-object v4, p0, Lcom/google/android/gms/common/images/c;->a:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v4}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/images/c;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/common/images/e;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 613
    :goto_1
    instance-of v4, v0, Lcom/google/android/gms/common/images/g;

    if-nez v4, :cond_0

    .line 614
    iget-object v4, p0, Lcom/google/android/gms/common/images/c;->a:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v4}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 608
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/common/images/c;->a:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v4}, Lcom/google/android/gms/common/images/ImageManager;->d(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/images/c;->b:Landroid/net/Uri;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    iget-object v4, p0, Lcom/google/android/gms/common/images/c;->a:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v4}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/images/c;->a:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v5}, Lcom/google/android/gms/common/images/ImageManager;->c(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/a/b;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/common/images/e;->a(Landroid/content/Context;Lcom/google/android/gms/common/images/a/b;)V

    goto :goto_1

    .line 617
    :cond_2
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 554
    const-string v0, "OnBitmapLoadedRunnable must be executed in the main thread"

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v1, v3, :cond_0

    const-string v1, "Asserts"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkMainThread: current thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS NOT the main thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/images/c;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 558
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/images/c;->a:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->h(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 560
    iget-boolean v0, p0, Lcom/google/android/gms/common/images/c;->e:Z

    if-eqz v0, :cond_2

    .line 561
    iget-object v0, p0, Lcom/google/android/gms/common/images/c;->a:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->h(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/a;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/a/a;->a(I)V

    .line 570
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 571
    iput-boolean v2, p0, Lcom/google/android/gms/common/images/c;->e:Z

    .line 572
    iget-object v0, p0, Lcom/google/android/gms/common/images/c;->a:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->g(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 596
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 556
    goto :goto_0

    .line 577
    :cond_2
    if-eqz v1, :cond_3

    .line 578
    iget-object v0, p0, Lcom/google/android/gms/common/images/c;->a:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->h(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/a;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/images/f;

    iget-object v3, p0, Lcom/google/android/gms/common/images/c;->b:Landroid/net/Uri;

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/images/f;-><init>(Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/google/android/gms/common/images/c;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/images/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/images/c;->a:Lcom/google/android/gms/common/images/ImageManager;

    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->e(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/images/c;->b:Landroid/net/Uri;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    .line 588
    if-eqz v0, :cond_4

    .line 589
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/images/c;->a(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;Z)V

    .line 593
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/images/c;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 594
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 595
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->b()Ljava/util/HashSet;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/images/c;->b:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 596
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
