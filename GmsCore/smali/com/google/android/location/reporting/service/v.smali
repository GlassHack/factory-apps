.class final Lcom/google/android/location/reporting/service/v;
.super Lcom/google/android/gms/common/internal/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/reporting/service/ReportingAndroidService;


# direct methods
.method constructor <init>(Lcom/google/android/location/reporting/service/ReportingAndroidService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/location/reporting/service/v;->a:Lcom/google/android/location/reporting/service/ReportingAndroidService;

    .line 79
    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/content/Context;)V

    .line 80
    return-void
.end method


# virtual methods
.method public final d(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/location/reporting/service/v;->a:Lcom/google/android/location/reporting/service/ReportingAndroidService;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/location/reporting/service/v;->a:Lcom/google/android/location/reporting/service/ReportingAndroidService;

    invoke-static {v0}, Lcom/google/android/location/reporting/service/ReportingAndroidService;->a(Lcom/google/android/location/reporting/service/ReportingAndroidService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/google/android/gms/common/k;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Package not signed with Google cert: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/android/location/reporting/service/u;

    iget-object v1, p0, Lcom/google/android/location/reporting/service/v;->a:Lcom/google/android/location/reporting/service/ReportingAndroidService;

    invoke-direct {v0, v1, p3}, Lcom/google/android/location/reporting/service/u;-><init>(Lcom/google/android/location/reporting/service/ReportingAndroidService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/location/reporting/service/u;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 97
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/x;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    const-string v0, "GCoreUlr"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const-string v0, "GCoreUlr"

    const-string v1, "client died while brokering service"

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
