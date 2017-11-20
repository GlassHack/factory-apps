.class final Lcom/google/android/gms/fitness/service/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/fitness/internal/v;

.field final synthetic d:Lcom/google/android/gms/fitness/service/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/v;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/aj;->d:Lcom/google/android/gms/fitness/service/i;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/aj;->a:Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;

    iput-object p3, p0, Lcom/google/android/gms/fitness/service/aj;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/fitness/service/aj;->c:Lcom/google/android/gms/fitness/internal/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 539
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/aj;->a:Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;->a()Lcom/google/android/gms/fitness/data/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/aj;->d:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->e(Lcom/google/android/gms/fitness/service/i;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/aj;->a:Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;->a()Lcom/google/android/gms/fitness/data/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/aj;->d:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->f(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/l/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/aj;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/aj;->a:Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;->a()Lcom/google/android/gms/fitness/data/o;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/google/android/gms/fitness/l/a;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;->a()Lcom/google/android/gms/fitness/data/o;

    move-result-object v2

    const-string v4, ""

    invoke-direct {v3, v1, v2, v4}, Lcom/google/android/gms/fitness/l/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/fitness/data/o;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/fitness/l/b;->b:Lcom/google/android/gms/fitness/l/g;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/l/g;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 549
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/o;

    .line 552
    iget-object v2, p0, Lcom/google/android/gms/fitness/service/aj;->d:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v2}, Lcom/google/android/gms/fitness/service/i;->g(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/sensors/a;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/o;)Z

    move-result v2

    .line 553
    if-nez v2, :cond_1

    .line 554
    const-string v2, "Could not unregister %s with sensor adapter %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/aj;->d:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->g(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/sensors/a;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 546
    :cond_2
    iget-object v0, v0, Lcom/google/android/gms/fitness/l/b;->c:Lcom/google/android/gms/fitness/l/g;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;->b()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/l/g;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 560
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/aj;->c:Lcom/google/android/gms/fitness/internal/v;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :goto_2
    return-void

    .line 561
    :catch_0
    move-exception v0

    const-string v1, " Couldn\'t send callback for %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/aj;->a:Lcom/google/android/gms/fitness/request/SensorUnregistrationRequest;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method
