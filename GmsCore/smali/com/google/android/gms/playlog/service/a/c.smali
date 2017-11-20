.class public final Lcom/google/android/gms/playlog/service/a/c;
.super Lcom/google/android/gms/common/internal/a;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private c:Lcom/google/android/gms/playlog/b/a/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p1, p0, Lcom/google/android/gms/playlog/service/a/c;->a:Landroid/content/Context;

    .line 47
    invoke-static {}, Lcom/google/android/gms/playlog/b/a/f;->a()Lcom/google/android/gms/playlog/b/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/playlog/service/a/c;->c:Lcom/google/android/gms/playlog/b/a/f;

    .line 48
    return-void
.end method


# virtual methods
.method public final g(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gms/playlog/service/a/c;->a:Landroid/content/Context;

    :try_start_0
    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/playlog/service/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PlayLogBrokerService"

    const-string v1, "Getting the PlayLog service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/playlog/service/a/b;

    iget-object v2, p0, Lcom/google/android/gms/playlog/service/a/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/playlog/service/a/c;->c:Lcom/google/android/gms/playlog/b/a/f;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/playlog/service/a/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/playlog/b/a/f;)V

    invoke-virtual {v1}, Lcom/google/android/gms/playlog/service/a/b;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/x;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 61
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    const-string v1, "PlayLogBrokerService"

    const-string v2, "Could not verify the package name of the caller."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "PlayLogBrokerService"

    const-string v2, "Calling package is not allowed to use."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    .line 59
    :catch_2
    move-exception v0

    const-string v0, "PlayLogBrokerService"

    const-string v1, "Client died while brokering service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
