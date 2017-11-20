.class final Lcom/google/android/gms/fitness/service/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/request/DataDeleteRequest;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/fitness/internal/v;

.field final synthetic d:Lcom/google/android/gms/fitness/service/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/DataDeleteRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/v;)V
    .locals 0

    .prologue
    .line 1355
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/r;->d:Lcom/google/android/gms/fitness/service/i;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/r;->a:Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    iput-object p3, p0, Lcom/google/android/gms/fitness/service/r;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/fitness/service/r;->c:Lcom/google/android/gms/fitness/internal/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 1361
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/r;->d:Lcom/google/android/gms/fitness/service/i;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/r;->a:Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/r;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/DataDeleteRequest;Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 1362
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/r;->c:Lcom/google/android/gms/fitness/internal/v;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1369
    :goto_0
    return-void

    .line 1364
    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/r;->c:Lcom/google/android/gms/fitness/internal/v;

    invoke-static {}, Lcom/google/android/gms/fitness/service/i;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1366
    :catch_1
    move-exception v0

    const-string v1, "Couldn\'t send callback for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/fitness/service/r;->a:Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
