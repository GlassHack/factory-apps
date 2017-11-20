.class final Lcom/google/android/gms/auth/login/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/login/a/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/login/a/b;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/android/gms/auth/login/a/c;->a:Lcom/google/android/gms/auth/login/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 204
    invoke-static {p2}, Lcom/android/c/a/b;->a(Landroid/os/IBinder;)Lcom/android/c/a/a;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/google/android/gms/auth/login/a/c;->a:Lcom/google/android/gms/auth/login/a/b;

    iget-object v1, v1, Lcom/google/android/gms/auth/login/a/b;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/auth/login/a/c;->a:Lcom/google/android/gms/auth/login/a/b;

    iput-object v0, v1, Lcom/google/android/gms/auth/login/a/b;->c:Lcom/android/c/a/a;

    .line 208
    iget-object v0, p0, Lcom/google/android/gms/auth/login/a/c;->a:Lcom/google/android/gms/auth/login/a/b;

    iget-object v0, v0, Lcom/google/android/gms/auth/login/a/b;->e:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    iget-object v0, p0, Lcom/google/android/gms/auth/login/a/c;->a:Lcom/google/android/gms/auth/login/a/b;

    iget-object v0, v0, Lcom/google/android/gms/auth/login/a/b;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 211
    return-void

    .line 210
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/auth/login/a/c;->a:Lcom/google/android/gms/auth/login/a/b;

    iget-object v1, v1, Lcom/google/android/gms/auth/login/a/b;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/gms/auth/login/a/c;->a:Lcom/google/android/gms/auth/login/a/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/auth/login/a/b;->c:Lcom/android/c/a/a;

    .line 215
    return-void
.end method
