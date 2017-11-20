.class final Lcom/google/android/gms/fitness/sensors/a/v;
.super Lcom/google/android/gms/fitness/sensors/a/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

.field final synthetic b:Lcom/google/android/gms/fitness/request/h;

.field final synthetic c:Lcom/google/android/gms/fitness/sensors/a/t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/sensors/a/t;Lcom/google/android/gms/fitness/request/StartBleScanRequest;Lcom/google/android/gms/fitness/request/h;)V
    .locals 1

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/a/v;->c:Lcom/google/android/gms/fitness/sensors/a/t;

    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/a/v;->a:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    iput-object p3, p0, Lcom/google/android/gms/fitness/sensors/a/v;->b:Lcom/google/android/gms/fitness/request/h;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/sensors/a/x;-><init>(Lcom/google/android/gms/fitness/sensors/a/t;B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/v;->b:Lcom/google/android/gms/fitness/request/h;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/request/h;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/v;->c:Lcom/google/android/gms/fitness/sensors/a/t;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/t;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/v;->b:Lcom/google/android/gms/fitness/request/h;

    invoke-interface {v1}, Lcom/google/android/gms/fitness/request/h;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void

    .line 92
    :catch_0
    move-exception v0

    const-string v1, "Couldn\'t send callback to caller"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/fitness/data/BleDevice;)V
    .locals 3

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/v;->a:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;->a(Lcom/google/android/gms/fitness/data/BleDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/v;->b:Lcom/google/android/gms/fitness/request/h;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/request/h;->a(Lcom/google/android/gms/fitness/data/BleDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    const-string v1, "Couldn\'t send callback to caller"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
