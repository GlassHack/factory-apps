.class public Lcom/google/android/gms/common/util/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/os/PowerManager$WakeLock;

.field b:I

.field final c:Ljava/lang/Object;

.field d:I

.field public e:Lcom/google/android/gms/common/util/a/f;

.field f:Landroid/os/HandlerThread;

.field private g:Ljava/lang/String;

.field private h:Z

.field private final i:Ljava/util/LinkedList;

.field private j:Z

.field private k:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1490
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Context can not be null in a wakeful state machine."

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const-string v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Wakeful StateMachine: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/common/util/a/c;-><init>(Ljava/lang/String;Landroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V

    .line 1491
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/util/a/c;->c:Ljava/lang/Object;

    .line 500
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/util/a/c;->i:Ljava/util/LinkedList;

    .line 507
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/util/a/c;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 515
    iput v2, p0, Lcom/google/android/gms/common/util/a/c;->d:I

    .line 1494
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/common/util/a/c;->f:Landroid/os/HandlerThread;

    .line 1496
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1497
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1499
    iput-object p1, p0, Lcom/google/android/gms/common/util/a/c;->g:Ljava/lang/String;

    .line 1500
    iput-object p2, p0, Lcom/google/android/gms/common/util/a/c;->a:Landroid/os/PowerManager$WakeLock;

    .line 1501
    new-instance v1, Lcom/google/android/gms/common/util/a/f;

    invoke-direct {v1, v0, p0, v2}, Lcom/google/android/gms/common/util/a/f;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/util/a/c;B)V

    iput-object v1, p0, Lcom/google/android/gms/common/util/a/c;->e:Lcom/google/android/gms/common/util/a/f;

    .line 1502
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/util/a/c;I)V
    .locals 4

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->e:Lcom/google/android/gms/common/util/a/f;

    iget-object v1, p0, Lcom/google/android/gms/common/util/a/c;->i:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/util/a/j;

    iget v3, v0, Lcom/google/android/gms/common/util/a/j;->b:I

    if-lt p1, v3, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/common/util/a/j;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private b(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->e:Lcom/google/android/gms/common/util/a/f;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private d(I)Landroid/os/Message;
    .locals 1

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->e:Lcom/google/android/gms/common/util/a/f;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/os/Message;)Landroid/os/Message;
    .locals 3

    .prologue
    .line 1884
    invoke-virtual {p0}, Lcom/google/android/gms/common/util/a/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/common/util/a/c;->j:Z

    if-eqz v0, :cond_2

    .line 1885
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/util/a/c;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 1886
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/util/a/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/util/a/c;->b:I

    .line 1887
    invoke-virtual {p0}, Lcom/google/android/gms/common/util/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/common/util/a/c;->b:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1888
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1890
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1891
    const/4 v0, -0x4

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/util/a/c;->b(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1894
    :cond_2
    return-object p1

    .line 1890
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->e:Lcom/google/android/gms/common/util/a/f;

    .line 1906
    if-nez v0, :cond_0

    .line 1908
    :goto_0
    return-void

    .line 1907
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/util/a/c;->d(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/util/a/f;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method protected final a()Lcom/google/android/gms/common/util/a/a;
    .locals 1

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->e:Lcom/google/android/gms/common/util/a/f;

    .line 1559
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1560
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/util/a/f;->b(Lcom/google/android/gms/common/util/a/f;)Lcom/google/android/gms/common/util/a/a;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1743
    packed-switch p1, :pswitch_data_0

    .line 1753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1754
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1755
    const-string v1, "(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1757
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1758
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1745
    :pswitch_0
    const-string v0, "SM_INIT_CMD"

    goto :goto_0

    .line 1747
    :pswitch_1
    const-string v0, "SM_QUIT_CMD"

    goto :goto_0

    .line 1749
    :pswitch_2
    const-string v0, "SM_WAIT_IDLE_CMD"

    goto :goto_0

    .line 1751
    :pswitch_3
    const-string v0, "SM_WRAPPED_MESSAGE"

    goto :goto_0

    .line 1743
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1951
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/util/a/c;->b(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/util/a/c;->e(Landroid/os/Message;)V

    .line 1952
    return-void
.end method

.method protected final a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->e:Lcom/google/android/gms/common/util/a/f;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/a/f;->a(Lcom/google/android/gms/common/util/a/f;Landroid/os/Message;)V

    .line 1603
    return-void
.end method

.method protected final a(Lcom/google/android/gms/common/util/a/a;)V
    .locals 1

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->e:Lcom/google/android/gms/common/util/a/f;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/a/f;->a(Lcom/google/android/gms/common/util/a/f;Lcom/google/android/gms/common/util/a/a;)V

    .line 1579
    return-void
.end method

.method protected final a(Lcom/google/android/gms/common/util/a/b;)V
    .locals 1

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->e:Lcom/google/android/gms/common/util/a/f;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/a/f;->a(Lcom/google/android/gms/common/util/a/f;Lcom/google/android/gms/common/util/a/b;)Lcom/google/android/gms/common/util/a/i;

    .line 1531
    return-void
.end method

.method public final a(Ljava/io/PrintWriter;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/common/util/a/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2179
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, " total records="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->e:Lcom/google/android/gms/common/util/a/f;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 2180
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->e:Lcom/google/android/gms/common/util/a/f;

    if-nez v0, :cond_1

    move v0, v1

    :goto_2
    if-ge v2, v0, :cond_3

    .line 2181
    const-string v3, " rec[%d]: %s\n"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->e:Lcom/google/android/gms/common/util/a/f;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/common/util/a/d;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2182
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 2180
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 2179
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/util/a/f;->d(Lcom/google/android/gms/common/util/a/f;)Lcom/google/android/gms/common/util/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/util/a/e;->c()I

    move-result v0

    goto :goto_0

    .line 2180
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/common/util/a/f;->d(Lcom/google/android/gms/common/util/a/f;)Lcom/google/android/gms/common/util/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/util/a/e;->b()I

    move-result v0

    goto :goto_2

    .line 2181
    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/common/util/a/f;->d(Lcom/google/android/gms/common/util/a/f;)Lcom/google/android/gms/common/util/a/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/util/a/e;->b(I)Lcom/google/android/gms/common/util/a/d;

    move-result-object v0

    goto :goto_3

    .line 2184
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "curState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/util/a/c;->a()Lcom/google/android/gms/common/util/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2185
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2205
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->g:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 1637
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 1942
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/util/a/c;->d(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/util/a/c;->e(Landroid/os/Message;)V

    .line 1943
    return-void
.end method

.method protected final b(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->e:Lcom/google/android/gms/common/util/a/f;

    invoke-static {v0}, Lcom/google/android/gms/common/util/a/f;->c(Lcom/google/android/gms/common/util/a/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " - unhandledMessage: msg.what="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/util/a/c;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/util/a/c;->g:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    :cond_0
    return-void
.end method

.method protected final c(I)V
    .locals 1

    .prologue
    .line 2039
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/util/a/c;->d(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/util/a/c;->c(Landroid/os/Message;)V

    .line 2040
    return-void
.end method

.method protected final c(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->e:Lcom/google/android/gms/common/util/a/f;

    .line 1919
    if-nez v0, :cond_0

    .line 1921
    :goto_0
    return-void

    .line 1920
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/util/a/c;->d(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/util/a/f;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final c()Z
    .locals 1

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->e:Lcom/google/android/gms/common/util/a/f;

    .line 2163
    if-nez v0, :cond_0

    .line 2168
    :goto_0
    return-void

    .line 2166
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/util/a/f;->e(Lcom/google/android/gms/common/util/a/f;)V

    .line 2167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/util/a/c;->h:Z

    goto :goto_0
.end method
