.class public Lcom/google/android/gms/internal/gm;
.super Lcom/google/android/gms/common/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c",
        "<",
        "Lcom/google/android/gms/internal/gk;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 6

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/internal/c$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const v1, 0x5d4044

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gm;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/i;->q(Lcom/google/android/gms/common/internal/h;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/gj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gk;->a(Lcom/google/android/gms/internal/gj;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/gj;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gm;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gk;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/gk;->a(Lcom/google/android/gms/internal/gj;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)V

    return-void
.end method

.method protected bd(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gk;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/gk$a;->bc(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gk;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.pseudonymous.internal.IPseudonymousIdService"

    return-object v0
.end method

.method protected getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.pseudonymous.service.START"

    return-object v0
.end method

.method protected synthetic i(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gm;->bd(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gk;

    move-result-object v0

    return-object v0
.end method
