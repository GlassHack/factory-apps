.class public final Lcom/google/android/gms/wearable/node/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/node/ax;


# instance fields
.field final a:Landroid/content/Context;

.field volatile b:Ljava/lang/String;

.field final c:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/al;->c:Ljava/util/concurrent/Semaphore;

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/al;->a:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/wearable/node/am;

    invoke-direct {v1, p0}, Lcom/google/android/gms/wearable/node/am;-><init>(Lcom/google/android/gms/wearable/node/al;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/al;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/al;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should never be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/al;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0

    .line 47
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/al;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/al;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    return-object v0
.end method
