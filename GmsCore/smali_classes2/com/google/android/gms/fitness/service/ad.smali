.class final Lcom/google/android/gms/fitness/service/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/fitness/internal/v;

.field final synthetic d:Lcom/google/android/gms/fitness/service/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/v;)V
    .locals 0

    .prologue
    .line 1922
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/ad;->d:Lcom/google/android/gms/fitness/service/i;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/ad;->a:Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;

    iput-object p3, p0, Lcom/google/android/gms/fitness/service/ad;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/fitness/service/ad;->c:Lcom/google/android/gms/fitness/internal/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 1928
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ad;->d:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/n/ar;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/fitness/n/ar;->e_()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/internal/ble/b;

    .line 1929
    iget-object v2, v0, Lcom/google/android/gms/fitness/internal/ble/b;->a:Lcom/google/android/gms/fitness/data/BleDevice;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/BleDevice;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/ad;->a:Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/fitness/service/ad;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/fitness/internal/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1933
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/ad;->d:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v1}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/n/ar;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/fitness/internal/ble/b;->a:Lcom/google/android/gms/fitness/data/BleDevice;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/BleDevice;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/n/ar;->f(Ljava/lang/String;)Z

    .line 1934
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ad;->c:Lcom/google/android/gms/fitness/internal/v;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 1946
    :goto_0
    return-void

    .line 1939
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ad;->c:Lcom/google/android/gms/fitness/internal/v;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1941
    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ad;->c:Lcom/google/android/gms/fitness/internal/v;

    invoke-static {}, Lcom/google/android/gms/fitness/service/i;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1943
    :catch_1
    move-exception v0

    const-string v1, "Couldn\'t return result to caller for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/fitness/service/ad;->a:Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
