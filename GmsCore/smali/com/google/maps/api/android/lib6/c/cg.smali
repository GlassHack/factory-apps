.class final Lcom/google/maps/api/android/lib6/c/cg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/c/ce;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/ce;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/cg;->a:Lcom/google/maps/api/android/lib6/c/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/cg;->a:Lcom/google/maps/api/android/lib6/c/ce;

    invoke-static {p2}, Lcom/google/android/gms/maps/auth/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/auth/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/c/ce;->a(Lcom/google/maps/api/android/lib6/c/ce;Lcom/google/android/gms/maps/auth/d;)Lcom/google/android/gms/maps/auth/d;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/cg;->a:Lcom/google/maps/api/android/lib6/c/ce;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/ce;->d(Lcom/google/maps/api/android/lib6/c/ce;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/cg;->a:Lcom/google/maps/api/android/lib6/c/ce;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/c/ce;->c(Lcom/google/maps/api/android/lib6/c/ce;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/cg;->a:Lcom/google/maps/api/android/lib6/c/ce;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/c/ce;->a(Lcom/google/maps/api/android/lib6/c/ce;Lcom/google/android/gms/maps/auth/d;)Lcom/google/android/gms/maps/auth/d;

    return-void
.end method
