.class final Lcom/google/android/gms/pseudonymous/service/e;
.super Lcom/google/android/gms/common/internal/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/pseudonymous/service/PseudonymousIdService;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/pseudonymous/service/PseudonymousIdService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/gms/pseudonymous/service/e;->a:Lcom/google/android/gms/pseudonymous/service/PseudonymousIdService;

    .line 46
    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/pseudonymous/service/PseudonymousIdService;Landroid/content/Context;B)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/pseudonymous/service/e;-><init>(Lcom/google/android/gms/pseudonymous/service/PseudonymousIdService;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final r(Lcom/google/android/gms/common/internal/x;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gms/pseudonymous/service/e;->a:Lcom/google/android/gms/pseudonymous/service/PseudonymousIdService;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/pseudonymous/service/e;->a:Lcom/google/android/gms/pseudonymous/service/PseudonymousIdService;

    invoke-virtual {v0}, Lcom/google/android/gms/pseudonymous/service/PseudonymousIdService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/google/android/gms/common/k;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 57
    :try_start_0
    new-instance v0, Lcom/google/android/gms/pseudonymous/service/d;

    iget-object v1, p0, Lcom/google/android/gms/pseudonymous/service/e;->a:Lcom/google/android/gms/pseudonymous/service/PseudonymousIdService;

    invoke-direct {v0, v1}, Lcom/google/android/gms/pseudonymous/service/d;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/pseudonymous/service/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/x;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    const-string v0, "PseudonymousIdService"

    const-string v1, "client died while brokering service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
