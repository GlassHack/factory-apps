.class final Lcom/google/android/gms/wearable/node/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/node/ay;

.field private final b:Ljava/io/InputStream;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/wearable/node/bb;

.field private final e:Lcom/google/android/gms/wearable/node/bf;

.field private final f:Lcom/google/android/gms/wearable/node/bg;

.field private final g:Lcom/google/android/gms/wearable/node/r;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/wearable/node/ay;Ljava/io/InputStream;Lcom/google/android/gms/wearable/c/i;Lcom/google/android/gms/wearable/node/bb;)V
    .locals 2

    .prologue
    .line 502
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/bc;->a:Lcom/google/android/gms/wearable/node/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    invoke-static {}, Lcom/google/android/gms/wearable/node/be;->a()Lcom/google/android/gms/wearable/node/bf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bc;->e:Lcom/google/android/gms/wearable/node/bf;

    .line 496
    new-instance v0, Lcom/google/android/gms/wearable/node/bg;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/node/bg;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bc;->f:Lcom/google/android/gms/wearable/node/bg;

    .line 503
    iput-object p2, p0, Lcom/google/android/gms/wearable/node/bc;->b:Ljava/io/InputStream;

    .line 504
    iget-object v0, p3, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bc;->c:Ljava/lang/String;

    .line 505
    iget v0, p3, Lcom/google/android/gms/wearable/c/i;->d:I

    iget-object v1, p1, Lcom/google/android/gms/wearable/node/ay;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/wearable/node/s;

    invoke-direct {v0, v1}, Lcom/google/android/gms/wearable/node/s;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bc;->g:Lcom/google/android/gms/wearable/node/r;

    .line 507
    iput-object p4, p0, Lcom/google/android/gms/wearable/node/bc;->d:Lcom/google/android/gms/wearable/node/bb;

    .line 508
    return-void

    .line 505
    :cond_0
    new-instance v0, Lcom/google/android/gms/wearable/node/t;

    invoke-direct {v0, v1}, Lcom/google/android/gms/wearable/node/t;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a()Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 512
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "WearableReader"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 513
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/au;

    .line 514
    new-instance v3, Lcom/google/android/gms/wearable/c/n;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/c/n;-><init>()V

    .line 516
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/au;->a()Z

    move-result v1

    if-nez v1, :cond_5

    .line 517
    const-string v1, "wearable"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    const-string v1, "wearable"

    const-string v4, "WearableReader: reading from peer..."

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/wearable/c/n;->b()Lcom/google/android/gms/wearable/c/n;

    .line 523
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bc;->e:Lcom/google/android/gms/wearable/node/bf;

    iget-object v4, p0, Lcom/google/android/gms/wearable/node/bc;->b:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/google/android/gms/wearable/node/bc;->d:Lcom/google/android/gms/wearable/node/bb;

    invoke-static {v1, v4, v3, v5}, Lcom/google/android/gms/wearable/node/be;->a(Lcom/google/android/gms/wearable/node/bf;Ljava/io/InputStream;Lcom/google/android/gms/wearable/c/n;Lcom/google/android/gms/wearable/node/bb;)I

    .line 524
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bc;->f:Lcom/google/android/gms/wearable/node/bg;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/wearable/node/bg;->a(Lcom/google/android/gms/wearable/c/n;)Lcom/google/android/gms/wearable/c/m;

    move-result-object v1

    .line 528
    if-eqz v1, :cond_0

    .line 529
    iget-object v4, p0, Lcom/google/android/gms/wearable/node/bc;->g:Lcom/google/android/gms/wearable/node/r;

    invoke-interface {v4, v1}, Lcom/google/android/gms/wearable/node/r;->a(Lcom/google/android/gms/wearable/c/m;)Lcom/google/android/gms/wearable/node/aq;

    move-result-object v4

    .line 536
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bc;->a:Lcom/google/android/gms/wearable/node/ay;

    iget-object v5, v1, Lcom/google/android/gms/wearable/node/ay;->e:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bc;->a:Lcom/google/android/gms/wearable/node/ay;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/ay;->e:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/google/android/gms/wearable/node/bc;->c:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/node/ba;

    .line 538
    if-eqz v1, :cond_7

    .line 539
    iget-object v1, v1, Lcom/google/android/gms/wearable/node/ba;->b:Lcom/google/android/gms/wearable/node/y;

    .line 541
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 545
    if-nez v4, :cond_2

    .line 546
    if-eqz v1, :cond_0

    .line 547
    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/wearable/node/y;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 573
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bc;->g:Lcom/google/android/gms/wearable/node/r;

    invoke-interface {v1}, Lcom/google/android/gms/wearable/node/r;->a()V

    throw v0

    .line 541
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5

    throw v0

    .line 552
    :cond_2
    iget-object v5, v4, Lcom/google/android/gms/wearable/node/aq;->a:Lcom/google/android/gms/wearable/c/m;

    iget-object v5, v5, Lcom/google/android/gms/wearable/c/m;->k:Lcom/google/android/gms/wearable/c/l;

    if-nez v5, :cond_0

    .line 553
    const-string v5, "wearable"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 557
    const-string v5, "wearable"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "WearableReader: read message: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/google/android/gms/wearable/node/aq;->a:Lcom/google/android/gms/wearable/c/m;

    invoke-static {v7}, Lcom/google/android/gms/wearable/node/be;->b(Lcom/google/android/gms/wearable/c/m;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_3
    if-eqz v1, :cond_4

    .line 562
    invoke-virtual {v1}, Lcom/google/android/gms/wearable/node/y;->b()V

    .line 565
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bc;->a:Lcom/google/android/gms/wearable/node/ay;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/ay;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/node/w;

    .line 566
    iget-object v6, p0, Lcom/google/android/gms/wearable/node/bc;->c:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/wearable/node/aq;->a:Lcom/google/android/gms/wearable/c/m;

    iget-object v8, v4, Lcom/google/android/gms/wearable/node/aq;->b:Lcom/google/android/gms/wearable/node/v;

    invoke-interface {v1, v6, v7, v8}, Lcom/google/android/gms/wearable/node/w;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)V

    goto :goto_2

    .line 570
    :cond_5
    const-string v0, "wearable"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 571
    const-string v0, "wearable"

    const-string v1, "WearableReader: finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 573
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bc;->g:Lcom/google/android/gms/wearable/node/r;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/node/r;->a()V

    return-object v2

    :cond_7
    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/bc;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
