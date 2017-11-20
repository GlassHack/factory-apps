.class final Lcom/google/android/gms/config/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/gms/config/ConfigFetchService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/config/ConfigFetchService;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/gms/config/d;->a:Lcom/google/android/gms/config/ConfigFetchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 55
    const-string v0, "ConfigFetchService"

    const-string v1, "service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/config/d;->a:Lcom/google/android/gms/config/ConfigFetchService;

    invoke-static {p2}, Lcom/google/android/gms/config/a/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/config/a/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/config/ConfigFetchService;->a(Lcom/google/android/gms/config/ConfigFetchService;Lcom/google/android/gms/config/a/d;)Lcom/google/android/gms/config/a/d;

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 59
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
    .line 64
    const-string v0, "ConfigFetchService"

    const-string v1, "service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/config/d;->a:Lcom/google/android/gms/config/ConfigFetchService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/config/ConfigFetchService;->a(Lcom/google/android/gms/config/ConfigFetchService;Lcom/google/android/gms/config/a/d;)Lcom/google/android/gms/config/a/d;

    .line 67
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
