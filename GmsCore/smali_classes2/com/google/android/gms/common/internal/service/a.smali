.class final Lcom/google/android/gms/common/internal/service/a;
.super Lcom/google/android/gms/common/internal/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/service/CommonApiService;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/internal/service/CommonApiService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/gms/common/internal/service/a;->a:Lcom/google/android/gms/common/internal/service/CommonApiService;

    .line 41
    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final j(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/service/a;->a:Lcom/google/android/gms/common/internal/service/CommonApiService;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/common/internal/service/b;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/service/a;->a:Lcom/google/android/gms/common/internal/service/CommonApiService;

    invoke-direct {v1, v2, p3}, Lcom/google/android/gms/common/internal/service/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/service/b;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/x;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    const-string v0, "CommonApiService"

    const-string v1, "Client died while binding service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
