.class final Lcom/google/android/gms/clearcut/service/d;
.super Lcom/google/android/gms/common/internal/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/clearcut/service/ClearcutLoggerService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/clearcut/service/ClearcutLoggerService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/gms/clearcut/service/d;->a:Lcom/google/android/gms/clearcut/service/ClearcutLoggerService;

    .line 66
    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/content/Context;)V

    .line 67
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/clearcut/service/d;->b:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/clearcut/service/d;->a:Lcom/google/android/gms/clearcut/service/ClearcutLoggerService;

    invoke-virtual {v0}, Lcom/google/android/gms/clearcut/service/ClearcutLoggerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 78
    :try_start_0
    new-instance v0, Lcom/google/android/gms/clearcut/service/c;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/service/d;->a:Lcom/google/android/gms/clearcut/service/ClearcutLoggerService;

    iget-object v2, p0, Lcom/google/android/gms/clearcut/service/d;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/clearcut/service/c;-><init>(Lcom/google/android/gms/clearcut/service/ClearcutLoggerService;Landroid/content/Context;)V

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/clearcut/service/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/x;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    const-string v0, "ClearcutService"

    const-string v1, "client died while brokering service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
