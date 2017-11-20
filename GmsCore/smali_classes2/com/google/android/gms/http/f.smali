.class final Lcom/google/android/gms/http/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/gms/http/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/http/e;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/gms/http/f;->a:Lcom/google/android/gms/http/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gms/http/f;->a:Lcom/google/android/gms/http/e;

    invoke-static {p2}, Lcom/google/android/gms/http/h;->a(Landroid/os/IBinder;)Lcom/google/android/gms/http/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/http/e;->a(Lcom/google/android/gms/http/e;Lcom/google/android/gms/http/g;)Lcom/google/android/gms/http/g;

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/http/f;->a:Lcom/google/android/gms/http/e;

    invoke-static {v0}, Lcom/google/android/gms/http/e;->a(Lcom/google/android/gms/http/e;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 89
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gms/http/f;->a:Lcom/google/android/gms/http/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/http/e;->a(Lcom/google/android/gms/http/e;Lcom/google/android/gms/http/g;)Lcom/google/android/gms/http/g;

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/http/f;->a:Lcom/google/android/gms/http/e;

    invoke-static {v0}, Lcom/google/android/gms/http/e;->c(Lcom/google/android/gms/http/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/http/e;->a()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/http/f;->a:Lcom/google/android/gms/http/e;

    invoke-static {v2}, Lcom/google/android/gms/http/e;->b(Lcom/google/android/gms/http/e;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 97
    return-void
.end method
