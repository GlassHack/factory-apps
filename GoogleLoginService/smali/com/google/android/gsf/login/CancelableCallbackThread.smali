.class abstract Lcom/google/android/gsf/login/CancelableCallbackThread;
.super Ljava/lang/Thread;
.source "CancelableCallbackThread.java"


# instance fields
.field protected mCallbackMessage:Landroid/os/Message;

.field protected mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Landroid/os/Message;)V
    .locals 2
    .param p1, "callbackMessage"    # Landroid/os/Message;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    iget-object v0, p0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    iput-object p1, p0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mCallbackMessage:Landroid/os/Message;

    .line 31
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CancelableCallbackThread;->runInBackground()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    monitor-enter p0

    .line 42
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mCallbackMessage:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 49
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 47
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mCallbackMessage:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    goto :goto_1

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected abstract runInBackground()V
.end method
