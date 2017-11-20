.class public final Lcom/google/android/gms/fitness/sensors/a/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/concurrent/Semaphore;

.field b:Ljava/lang/String;

.field private final c:Ljava/lang/Runnable;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/r;->a:Ljava/util/concurrent/Semaphore;

    .line 35
    new-instance v0, Lcom/google/android/gms/fitness/sensors/a/s;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/sensors/a/s;-><init>(Lcom/google/android/gms/fitness/sensors/a/r;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/r;->c:Ljava/lang/Runnable;

    .line 52
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/a/r;->d:Landroid/os/Handler;

    .line 53
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 82
    const-string v0, "Request permit released by %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/a/r;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/r;->b:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/r;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/r;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/r;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 86
    return-void
.end method

.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 57
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 59
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/r;->a:Ljava/util/concurrent/Semaphore;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->V:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v0}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/r;->d:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/a/r;->c:Ljava/lang/Runnable;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->V:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "Request permit acquired by %s"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v1, v2, v8

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iput-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/r;->b:Ljava/lang/String;

    .line 61
    return-void

    .line 63
    :cond_0
    const-string v0, "Couldn\'t acquire request permit: holder=%s, timeout=%s, requester: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/a/r;->b:Ljava/lang/String;

    aput-object v3, v2, v8

    sget-object v3, Lcom/google/android/gms/fitness/i/a;->V:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v3}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
