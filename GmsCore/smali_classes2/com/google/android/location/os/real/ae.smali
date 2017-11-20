.class final Lcom/google/android/location/os/real/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;

.field private final b:Ljava/lang/Object;

.field private c:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1007
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/real/ae;->b:Ljava/lang/Object;

    .line 1011
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/os/real/ae;->a:Ljava/util/concurrent/CountDownLatch;

    .line 1012
    return-void
.end method

.method private a()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/google/android/location/os/real/ae;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0}, Lcom/google/android/location/os/real/x;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 1035
    iget-object v1, p0, Lcom/google/android/location/os/real/ae;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 1036
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/os/real/ae;->c:Landroid/os/Looper;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1037
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/android/location/os/real/ae;)Landroid/os/Looper;
    .locals 1

    .prologue
    .line 1004
    invoke-direct {p0}, Lcom/google/android/location/os/real/ae;->a()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1017
    const/4 v0, -0x4

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1018
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1019
    iget-object v1, p0, Lcom/google/android/location/os/real/ae;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 1020
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/os/real/ae;->c:Landroid/os/Looper;

    .line 1021
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    iget-object v0, p0, Lcom/google/android/location/os/real/ae;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1023
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkLocationCallbackRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initialized for looper."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1027
    return-void

    .line 1021
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
