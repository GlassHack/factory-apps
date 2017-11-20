.class final Lcom/google/android/gms/fitness/service/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/fitness/request/SessionUnregistrationRequest;

.field final synthetic c:Lcom/google/android/gms/fitness/internal/v;

.field final synthetic d:Lcom/google/android/gms/fitness/service/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/i;Ljava/lang/String;Lcom/google/android/gms/fitness/request/SessionUnregistrationRequest;Lcom/google/android/gms/fitness/internal/v;)V
    .locals 0

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/o;->d:Lcom/google/android/gms/fitness/service/i;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/o;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/fitness/service/o;->b:Lcom/google/android/gms/fitness/request/SessionUnregistrationRequest;

    iput-object p4, p0, Lcom/google/android/gms/fitness/service/o;->c:Lcom/google/android/gms/fitness/internal/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/o;->d:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->d(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/service/au;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/o;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/o;->b:Lcom/google/android/gms/fitness/request/SessionUnregistrationRequest;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/request/SessionUnregistrationRequest;->a()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/fitness/service/au;->a(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 1108
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/o;->c:Lcom/google/android/gms/fitness/internal/v;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/internal/v;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1112
    :goto_0
    return-void

    .line 1109
    :catch_0
    move-exception v0

    const-string v1, "Failed to send Status to caller"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
