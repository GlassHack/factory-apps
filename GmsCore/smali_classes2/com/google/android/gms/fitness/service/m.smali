.class final Lcom/google/android/gms/fitness/service/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/internal/s;

.field final synthetic b:Lcom/google/android/gms/fitness/request/SessionStopRequest;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/fitness/service/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/internal/s;Lcom/google/android/gms/fitness/request/SessionStopRequest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/m;->d:Lcom/google/android/gms/fitness/service/i;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/m;->a:Lcom/google/android/gms/fitness/internal/s;

    iput-object p3, p0, Lcom/google/android/gms/fitness/service/m;->b:Lcom/google/android/gms/fitness/request/SessionStopRequest;

    iput-object p4, p0, Lcom/google/android/gms/fitness/service/m;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1012
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/m;->a:Lcom/google/android/gms/fitness/internal/s;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/m;->d:Lcom/google/android/gms/fitness/service/i;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/m;->b:Lcom/google/android/gms/fitness/request/SessionStopRequest;

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/m;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/SessionStopRequest;Ljava/lang/String;)Lcom/google/android/gms/fitness/result/SessionStopResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/internal/s;->a(Lcom/google/android/gms/fitness/result/SessionStopResult;)V
    :try_end_0
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1020
    :goto_0
    return-void

    .line 1014
    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/m;->a:Lcom/google/android/gms/fitness/internal/s;

    invoke-static {}, Lcom/google/android/gms/fitness/service/i;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/result/SessionStopResult;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionStopResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/internal/s;->a(Lcom/google/android/gms/fitness/result/SessionStopResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1017
    :catch_1
    move-exception v0

    const-string v1, "Failed to send SessionStopResult to caller"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
