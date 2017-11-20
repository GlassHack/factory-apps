.class final Lcom/google/android/gms/fitness/service/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/internal/v;

.field final synthetic b:Lcom/google/android/gms/fitness/request/DataInsertRequest;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/fitness/service/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/internal/v;Lcom/google/android/gms/fitness/request/DataInsertRequest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1304
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/q;->d:Lcom/google/android/gms/fitness/service/i;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/q;->a:Lcom/google/android/gms/fitness/internal/v;

    iput-object p3, p0, Lcom/google/android/gms/fitness/service/q;->b:Lcom/google/android/gms/fitness/request/DataInsertRequest;

    iput-object p4, p0, Lcom/google/android/gms/fitness/service/q;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 1309
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/q;->a:Lcom/google/android/gms/fitness/internal/v;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/q;->d:Lcom/google/android/gms/fitness/service/i;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/q;->b:Lcom/google/android/gms/fitness/request/DataInsertRequest;

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/q;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/DataInsertRequest;Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1316
    :goto_0
    return-void

    .line 1311
    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/q;->a:Lcom/google/android/gms/fitness/internal/v;

    invoke-static {}, Lcom/google/android/gms/fitness/service/i;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1313
    :catch_1
    move-exception v0

    const-string v1, "Couldn\'t send callback for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/fitness/service/q;->b:Lcom/google/android/gms/fitness/request/DataInsertRequest;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
