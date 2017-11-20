.class final Lcom/google/android/gms/fitness/service/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

.field final synthetic b:Lcom/google/android/gms/fitness/internal/v;

.field final synthetic c:Lcom/google/android/gms/fitness/service/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/StartBleScanRequest;Lcom/google/android/gms/fitness/internal/v;)V
    .locals 0

    .prologue
    .line 1775
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/x;->c:Lcom/google/android/gms/fitness/service/i;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/x;->a:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    iput-object p3, p0, Lcom/google/android/gms/fitness/service/x;->b:Lcom/google/android/gms/fitness/internal/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/x;->c:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->j(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/f/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/fitness/f/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1780
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/x;->c:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->k(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/sensors/a/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/x;->a:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/sensors/a/p;->a(Lcom/google/android/gms/fitness/request/StartBleScanRequest;)V

    .line 1781
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    .line 1787
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/x;->b:Lcom/google/android/gms/fitness/internal/v;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1791
    :goto_1
    return-void

    .line 1783
    :cond_0
    sget-object v0, Lcom/google/android/gms/fitness/f/d;->f:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    .line 1788
    :catch_0
    move-exception v0

    const-string v1, "Couldn\'t return result to caller for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/fitness/service/x;->a:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method
