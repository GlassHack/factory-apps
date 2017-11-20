.class final Lcom/google/android/gms/common/api/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/l;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/n;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/n;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/google/android/gms/common/api/p;->a:Lcom/google/android/gms/common/api/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/gms/common/api/p;->a:Lcom/google/android/gms/common/api/n;

    iget-object v0, v0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/p;->a:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/n;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    packed-switch p1, :pswitch_data_0

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/p;->a:Lcom/google/android/gms/common/api/n;

    iget-object v0, v0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 287
    :goto_1
    return-void

    .line 271
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/p;->a:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/p;->a:Lcom/google/android/gms/common/api/n;

    iget-object v1, v1, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 275
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/p;->a:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->e()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/google/android/gms/common/api/p;->a:Lcom/google/android/gms/common/api/n;

    iget-object v0, v0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 279
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/p;->a:Lcom/google/android/gms/common/api/n;

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gms/common/api/n;->f:I

    .line 280
    iget-object v0, p0, Lcom/google/android/gms/common/api/p;->a:Lcom/google/android/gms/common/api/n;

    iget-object v0, v0, Lcom/google/android/gms/common/api/n;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/p;->a:Lcom/google/android/gms/common/api/n;

    iget-object v1, v1, Lcom/google/android/gms/common/api/n;->h:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/p;->a:Lcom/google/android/gms/common/api/n;

    iget-wide v2, v2, Lcom/google/android/gms/common/api/n;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/gms/common/api/p;->a:Lcom/google/android/gms/common/api/n;

    iget-object v0, v0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/p;->a:Lcom/google/android/gms/common/api/n;

    iget v0, v0, Lcom/google/android/gms/common/api/n;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 252
    if-eqz p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/google/android/gms/common/api/p;->a:Lcom/google/android/gms/common/api/n;

    iget-object v0, v0, Lcom/google/android/gms/common/api/n;->i:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/p;->a:Lcom/google/android/gms/common/api/n;

    invoke-static {v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/p;->a:Lcom/google/android/gms/common/api/n;

    iget-object v0, v0, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 259
    return-void

    .line 258
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/p;->a:Lcom/google/android/gms/common/api/n;

    iget-object v1, v1, Lcom/google/android/gms/common/api/n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
