.class final Lcom/google/android/gms/auth/trustagent/trustlet/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/trustlet/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/trustlet/f;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/g;->a:Lcom/google/android/gms/auth/trustagent/trustlet/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/g;->a:Lcom/google/android/gms/auth/trustagent/trustlet/f;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->a(Lcom/google/android/gms/auth/trustagent/trustlet/f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/g;->a:Lcom/google/android/gms/auth/trustagent/trustlet/f;

    invoke-static {p2}, Lcom/android/b/a/e;->a(Landroid/os/IBinder;)Lcom/android/b/a/d;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->a(Lcom/google/android/gms/auth/trustagent/trustlet/f;Lcom/android/b/a/d;)Lcom/android/b/a/d;

    .line 391
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/g;->a:Lcom/google/android/gms/auth/trustagent/trustlet/f;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->b(Lcom/google/android/gms/auth/trustagent/trustlet/f;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 392
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 399
    const-string v0, "Coffee - FULTrustlet"

    const-string v1, "Unexpected disconnect from Face Unlock service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/g;->a:Lcom/google/android/gms/auth/trustagent/trustlet/f;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->b(Lcom/google/android/gms/auth/trustagent/trustlet/f;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 401
    return-void
.end method
