.class final Lcom/google/android/gms/fitness/service/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/request/SessionReadRequest;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/fitness/internal/p;

.field final synthetic d:Lcom/google/android/gms/fitness/service/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/SessionReadRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/p;)V
    .locals 0

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/p;->d:Lcom/google/android/gms/fitness/service/i;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/p;->a:Lcom/google/android/gms/fitness/request/SessionReadRequest;

    iput-object p3, p0, Lcom/google/android/gms/fitness/service/p;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/fitness/service/p;->c:Lcom/google/android/gms/fitness/internal/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 1200
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/p;->d:Lcom/google/android/gms/fitness/service/i;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/p;->a:Lcom/google/android/gms/fitness/request/SessionReadRequest;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/p;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/SessionReadRequest;Ljava/lang/String;)Lcom/google/android/gms/fitness/result/SessionReadResult;

    move-result-object v0

    .line 1201
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/p;->c:Lcom/google/android/gms/fitness/internal/p;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/internal/p;->a(Lcom/google/android/gms/fitness/result/SessionReadResult;)V
    :try_end_0
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1209
    :goto_0
    return-void

    .line 1203
    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/p;->c:Lcom/google/android/gms/fitness/internal/p;

    invoke-static {}, Lcom/google/android/gms/fitness/service/i;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/result/SessionReadResult;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionReadResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/internal/p;->a(Lcom/google/android/gms/fitness/result/SessionReadResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1206
    :catch_1
    move-exception v0

    const-string v1, "Couldn\'t return SessionReadResult to caller for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/fitness/service/p;->a:Lcom/google/android/gms/fitness/request/SessionReadRequest;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
