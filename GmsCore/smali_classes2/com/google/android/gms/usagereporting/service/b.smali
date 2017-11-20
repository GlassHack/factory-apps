.class final Lcom/google/android/gms/usagereporting/service/b;
.super Lcom/google/android/gms/common/internal/a;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method


# virtual methods
.method public final t(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/service/b;->b:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/service/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    :try_start_1
    new-instance v0, Lcom/google/android/gms/usagereporting/service/c;

    invoke-direct {v0}, Lcom/google/android/gms/usagereporting/service/c;-><init>()V

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/usagereporting/service/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/x;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 63
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string v1, "UsageReportingService"

    const-string v2, "client is not signed properly."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/x;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    const-string v0, "UsageReportingService"

    const-string v1, "client died while brokering service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
