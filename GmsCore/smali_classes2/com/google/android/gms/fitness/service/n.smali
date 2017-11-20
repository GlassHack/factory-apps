.class final Lcom/google/android/gms/fitness/service/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/fitness/internal/v;

.field final synthetic d:Lcom/google/android/gms/fitness/service/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;Ljava/lang/String;Lcom/google/android/gms/fitness/internal/v;)V
    .locals 0

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/n;->d:Lcom/google/android/gms/fitness/service/i;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/n;->a:Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;

    iput-object p3, p0, Lcom/google/android/gms/fitness/service/n;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/fitness/service/n;->c:Lcom/google/android/gms/fitness/internal/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/n;->d:Lcom/google/android/gms/fitness/service/i;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/n;->a:Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/n;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/service/i;->a(Lcom/google/android/gms/fitness/service/i;Lcom/google/android/gms/fitness/request/SessionRegistrationRequest;Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 1072
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/n;->c:Lcom/google/android/gms/fitness/internal/v;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    :goto_0
    return-void

    .line 1073
    :catch_0
    move-exception v0

    const-string v1, "Failed to send Status to caller"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
