.class public final Lcom/google/android/gms/common/internal/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/q;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/q;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/gms/common/internal/r;->a:Lcom/google/android/gms/common/internal/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->a:Lcom/google/android/gms/common/internal/q;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/q;->h:Lcom/google/android/gms/common/internal/p;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/p;->a(Lcom/google/android/gms/common/internal/p;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->a:Lcom/google/android/gms/common/internal/q;

    iput-object p2, v0, Lcom/google/android/gms/common/internal/q;->f:Landroid/os/IBinder;

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->a:Lcom/google/android/gms/common/internal/q;

    iput-object p1, v0, Lcom/google/android/gms/common/internal/q;->g:Landroid/content/ComponentName;

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->a:Lcom/google/android/gms/common/internal/q;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/q;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/j;

    .line 57
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/internal/j;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 59
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->a:Lcom/google/android/gms/common/internal/q;

    const/4 v2, 0x1

    iput v2, v0, Lcom/google/android/gms/common/internal/q;->d:I

    .line 60
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->a:Lcom/google/android/gms/common/internal/q;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/q;->h:Lcom/google/android/gms/common/internal/p;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/p;->a(Lcom/google/android/gms/common/internal/p;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->a:Lcom/google/android/gms/common/internal/q;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/common/internal/q;->f:Landroid/os/IBinder;

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->a:Lcom/google/android/gms/common/internal/q;

    iput-object p1, v0, Lcom/google/android/gms/common/internal/q;->g:Landroid/content/ComponentName;

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->a:Lcom/google/android/gms/common/internal/q;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/q;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/j;

    .line 69
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/j;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 71
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/r;->a:Lcom/google/android/gms/common/internal/q;

    const/4 v2, 0x2

    iput v2, v0, Lcom/google/android/gms/common/internal/q;->d:I

    .line 72
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
