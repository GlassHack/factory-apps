.class final Lcom/google/android/gms/common/internal/n;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/m;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/m;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/gms/common/internal/n;->a:Lcom/google/android/gms/common/internal/m;

    .line 65
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->a:Lcom/google/android/gms/common/internal/m;

    iget-object v1, v0, Lcom/google/android/gms/common/internal/m;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->a:Lcom/google/android/gms/common/internal/m;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/m;->a:Lcom/google/android/gms/common/internal/o;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/o;->c_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->a:Lcom/google/android/gms/common/internal/m;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/m;->a:Lcom/google/android/gms/common/internal/o;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/o;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->a:Lcom/google/android/gms/common/internal/m;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/m;->b:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->a:Lcom/google/android/gms/common/internal/m;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/m;->a:Lcom/google/android/gms/common/internal/o;

    .line 76
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/l;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/l;->a(Landroid/os/Bundle;)V

    .line 78
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :goto_0
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 79
    :cond_1
    const-string v0, "GmsClientEvents"

    const-string v1, "Don\'t know how to handle this message."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
