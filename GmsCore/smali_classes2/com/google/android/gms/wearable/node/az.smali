.class final Lcom/google/android/gms/wearable/node/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/node/ay;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/node/ay;Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/az;->a:Lcom/google/android/gms/wearable/node/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-object p2, p0, Lcom/google/android/gms/wearable/node/az;->b:Ljava/lang/String;

    .line 452
    iput-object p3, p0, Lcom/google/android/gms/wearable/node/az;->c:Ljava/util/concurrent/Callable;

    .line 453
    return-void
.end method

.method private a()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 460
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/au;

    .line 461
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/au;->b()V

    .line 462
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 463
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/az;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    const-string v1, "wearable"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    const-string v1, "wearable"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CallableWrapper ending for thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/az;->a:Lcom/google/android/gms/wearable/node/ay;

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/az;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wearable/node/ay;->a(Ljava/lang/String;)V

    .line 482
    :goto_0
    return-object v0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    :try_start_1
    const-string v1, "wearable"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 466
    const-string v1, "wearable"

    const-string v2, "Reader or writer threw an IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    :cond_1
    const-string v0, "wearable"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    const-string v0, "wearable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CallableWrapper ending for thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/az;->a:Lcom/google/android/gms/wearable/node/ay;

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/az;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/node/ay;->a(Ljava/lang/String;)V

    .line 482
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 468
    :catch_1
    move-exception v0

    .line 469
    :try_start_2
    const-string v1, "wearable"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 470
    const-string v1, "wearable"

    const-string v2, "Reader or writer was interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 476
    const-string v0, "wearable"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 477
    const-string v0, "wearable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CallableWrapper ending for thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/az;->a:Lcom/google/android/gms/wearable/node/ay;

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/az;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/node/ay;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 473
    :catch_2
    move-exception v0

    .line 474
    :try_start_3
    const-string v1, "wearable"

    const-string v2, "Unexpected exception in reader or writer:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 476
    const-string v0, "wearable"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 477
    const-string v0, "wearable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CallableWrapper ending for thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/az;->a:Lcom/google/android/gms/wearable/node/ay;

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/az;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/node/ay;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 476
    :catchall_0
    move-exception v0

    const-string v1, "wearable"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 477
    const-string v1, "wearable"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CallableWrapper ending for thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/az;->a:Lcom/google/android/gms/wearable/node/ay;

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/az;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wearable/node/ay;->a(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/az;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
