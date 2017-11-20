.class final Lcom/google/android/gms/fitness/service/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/fitness/internal/ble/c;

.field final synthetic c:Lcom/google/android/gms/fitness/service/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/i;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/ble/c;)V
    .locals 0

    .prologue
    .line 1957
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/ae;->c:Lcom/google/android/gms/fitness/service/i;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/ae;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/fitness/service/ae;->b:Lcom/google/android/gms/fitness/internal/ble/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1962
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ae;->c:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/n/ar;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/fitness/n/ar;->e_()Ljava/util/List;

    move-result-object v0

    .line 1963
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1964
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/internal/ble/b;

    .line 1965
    iget-object v0, v0, Lcom/google/android/gms/fitness/internal/ble/b;->a:Lcom/google/android/gms/fitness/data/BleDevice;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1969
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/fitness/service/i;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/result/BleDevicesResult;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/BleDevicesResult;

    move-result-object v0

    .line 1972
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/ae;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/fitness/internal/y;->a(Ljava/lang/String;)V

    .line 1973
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/ae;->b:Lcom/google/android/gms/fitness/internal/ble/c;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/internal/ble/c;->a(Lcom/google/android/gms/fitness/result/BleDevicesResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1977
    invoke-static {}, Lcom/google/android/gms/fitness/internal/y;->a()V

    .line 1978
    :goto_2
    return-void

    .line 1967
    :cond_0
    :try_start_2
    new-instance v0, Lcom/google/android/gms/fitness/result/BleDevicesResult;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/result/BleDevicesResult;-><init>(Ljava/util/List;Lcom/google/android/gms/common/api/Status;)V
    :try_end_2
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1974
    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "Couldn\'t return result to caller"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1977
    invoke-static {}, Lcom/google/android/gms/fitness/internal/y;->a()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/fitness/internal/y;->a()V

    throw v0
.end method
