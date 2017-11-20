.class Lcom/google/android/gms/common/api/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic TE:Lcom/google/android/gms/common/api/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->isConnecting()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->b(Lcom/google/android/gms/common/api/d;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->c(Lcom/google/android/gms/common/api/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onConnectionSuspended(I)V
    .locals 4
    .param p1, "cause"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->iy()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    new-instance v1, Lcom/google/android/gms/common/api/d$a;

    iget-object v2, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/d$a;-><init>(Lcom/google/android/gms/common/api/d;)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/d;->Tv:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/d;->d(Lcom/google/android/gms/common/api/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    iget-object v2, v2, Lcom/google/android/gms/common/api/d;->Tv:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    iget-object v0, v0, Lcom/google/android/gms/common/api/d;->Tu:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    iget-object v1, v1, Lcom/google/android/gms/common/api/d;->Tu:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v2}, Lcom/google/android/gms/common/api/d;->e(Lcom/google/android/gms/common/api/d;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    iget-object v0, v0, Lcom/google/android/gms/common/api/d;->Tu:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    iget-object v1, v1, Lcom/google/android/gms/common/api/d;->Tu:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v2}, Lcom/google/android/gms/common/api/d;->f(Lcom/google/android/gms/common/api/d;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$2;->TE:Lcom/google/android/gms/common/api/d;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/d;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
