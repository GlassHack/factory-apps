.class Lcom/google/android/gms/http/GoogleURLConnectionFactory$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/http/GoogleURLConnectionFactory;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic FL:Lcom/google/android/gms/http/GoogleURLConnectionFactory;


# direct methods
.method constructor <init>(Lcom/google/android/gms/http/GoogleURLConnectionFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory$1;->FL:Lcom/google/android/gms/http/GoogleURLConnectionFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory$1;->FL:Lcom/google/android/gms/http/GoogleURLConnectionFactory;

    invoke-static {p2}, Lcom/google/android/gms/http/b$a;->Z(Landroid/os/IBinder;)Lcom/google/android/gms/http/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->a(Lcom/google/android/gms/http/GoogleURLConnectionFactory;Lcom/google/android/gms/http/b;)Lcom/google/android/gms/http/b;

    iget-object v0, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory$1;->FL:Lcom/google/android/gms/http/GoogleURLConnectionFactory;

    invoke-static {v0}, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->a(Lcom/google/android/gms/http/GoogleURLConnectionFactory;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory$1;->FL:Lcom/google/android/gms/http/GoogleURLConnectionFactory;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->a(Lcom/google/android/gms/http/GoogleURLConnectionFactory;Lcom/google/android/gms/http/b;)Lcom/google/android/gms/http/b;

    iget-object v0, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory$1;->FL:Lcom/google/android/gms/http/GoogleURLConnectionFactory;

    invoke-static {v0}, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->c(Lcom/google/android/gms/http/GoogleURLConnectionFactory;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->eB()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/http/GoogleURLConnectionFactory$1;->FL:Lcom/google/android/gms/http/GoogleURLConnectionFactory;

    invoke-static {v2}, Lcom/google/android/gms/http/GoogleURLConnectionFactory;->b(Lcom/google/android/gms/http/GoogleURLConnectionFactory;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
