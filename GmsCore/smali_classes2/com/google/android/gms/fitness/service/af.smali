.class final Lcom/google/android/gms/fitness/service/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/request/DataSourcesRequest;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/fitness/internal/e;

.field final synthetic d:Lcom/google/android/gms/fitness/service/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/DataSourcesRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/e;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/af;->d:Lcom/google/android/gms/fitness/service/i;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/af;->a:Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    iput-object p3, p0, Lcom/google/android/gms/fitness/service/af;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/fitness/service/af;->c:Lcom/google/android/gms/fitness/internal/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/af;->d:Lcom/google/android/gms/fitness/service/i;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/af;->a:Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/af;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/DataSourcesRequest;Ljava/lang/String;)Lcom/google/android/gms/fitness/result/DataSourcesResult;
    :try_end_0
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 368
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/af;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/fitness/internal/y;->a(Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/af;->c:Lcom/google/android/gms/fitness/internal/e;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/internal/e;->a(Lcom/google/android/gms/fitness/result/DataSourcesResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    invoke-static {}, Lcom/google/android/gms/fitness/internal/y;->a()V

    .line 374
    :goto_1
    return-void

    .line 365
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/fitness/service/i;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/result/DataSourcesResult;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataSourcesResult;

    move-result-object v0

    goto :goto_0

    .line 370
    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "Couldn\'t return result to caller for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/fitness/service/af;->a:Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    invoke-static {}, Lcom/google/android/gms/fitness/internal/y;->a()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/fitness/internal/y;->a()V

    throw v0
.end method
