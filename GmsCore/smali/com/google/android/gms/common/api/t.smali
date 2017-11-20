.class final Lcom/google/android/gms/common/api/t;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/n;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/n;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/google/android/gms/common/api/t;->a:Lcom/google/android/gms/common/api/n;

    .line 316
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 317
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 321
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 322
    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->a:Lcom/google/android/gms/common/api/n;

    iget-object v0, v0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->a:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->a:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->a:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->a:Lcom/google/android/gms/common/api/n;

    iget-object v0, v0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 335
    :goto_0
    return-void

    .line 327
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->a:Lcom/google/android/gms/common/api/n;

    iget v1, v0, Lcom/google/android/gms/common/api/n;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/android/gms/common/api/n;->f:I

    .line 328
    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->a:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->a:Lcom/google/android/gms/common/api/n;

    iget-object v0, v0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/t;->a:Lcom/google/android/gms/common/api/n;

    iget-object v1, v1, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 334
    :cond_2
    const-string v0, "GoogleApiClientImpl"

    const-string v1, "Don\'t know how to handle this message."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
