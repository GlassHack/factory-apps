.class final Lcom/google/android/gms/fitness/service/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/request/StopBleScanRequest;

.field final synthetic b:Lcom/google/android/gms/fitness/internal/v;

.field final synthetic c:Lcom/google/android/gms/fitness/service/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/StopBleScanRequest;Lcom/google/android/gms/fitness/internal/v;)V
    .locals 0

    .prologue
    .line 1811
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/y;->c:Lcom/google/android/gms/fitness/service/i;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/y;->a:Lcom/google/android/gms/fitness/request/StopBleScanRequest;

    iput-object p3, p0, Lcom/google/android/gms/fitness/service/y;->b:Lcom/google/android/gms/fitness/internal/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/y;->c:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->j(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/f/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/fitness/f/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1816
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/y;->c:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->k(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/sensors/a/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/y;->a:Lcom/google/android/gms/fitness/request/StopBleScanRequest;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->b()Lcom/google/android/gms/fitness/request/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/sensors/a/p;->a(Lcom/google/android/gms/fitness/request/h;)V

    .line 1817
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    .line 1823
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/y;->b:Lcom/google/android/gms/fitness/internal/v;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1827
    :goto_1
    return-void

    .line 1819
    :cond_0
    sget-object v0, Lcom/google/android/gms/fitness/f/d;->f:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    .line 1824
    :catch_0
    move-exception v0

    const-string v1, "Couldn\'t return result to caller for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/fitness/service/y;->a:Lcom/google/android/gms/fitness/request/StopBleScanRequest;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method
