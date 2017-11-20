.class final Lcom/google/android/gms/config/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 48
    const-string v0, "ConfigClient"

    const-string v1, "service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/config/a/b;->a(Landroid/os/IBinder;)Lcom/google/android/gms/config/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/config/a;->a(Lcom/google/android/gms/config/a/a;)Lcom/google/android/gms/config/a/a;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 52
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 57
    const-string v0, "ConfigClient"

    const-string v1, "service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    monitor-enter p0

    .line 59
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/config/a;->a(Lcom/google/android/gms/config/a/a;)Lcom/google/android/gms/config/a/a;

    .line 60
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
