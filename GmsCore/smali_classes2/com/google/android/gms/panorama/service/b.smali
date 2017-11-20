.class final Lcom/google/android/gms/panorama/service/b;
.super Lcom/google/android/gms/common/internal/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/panorama/service/PanoramaAndroidService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/panorama/service/PanoramaAndroidService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/gms/panorama/service/b;->a:Lcom/google/android/gms/panorama/service/PanoramaAndroidService;

    .line 47
    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/panorama/service/a;

    iget-object v2, p0, Lcom/google/android/gms/panorama/service/b;->a:Lcom/google/android/gms/panorama/service/PanoramaAndroidService;

    invoke-direct {v1, v2}, Lcom/google/android/gms/panorama/service/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/android/gms/panorama/service/a;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/x;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    const-string v0, "PanoramaAndroidService"

    const-string v1, "client died while brokering service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
