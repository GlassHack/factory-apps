.class public Lcom/google/android/gms/internal/ke;
.super Lcom/google/android/gms/common/internal/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/i",
        "<",
        "Lcom/google/android/gms/internal/kg;",
        ">;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/internal/q;Lcom/google/android/gms/common/internal/i$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x675cf0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ke;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/common/internal/q;->j(Lcom/google/android/gms/common/internal/p;ILjava/lang/String;)V

    return-void
.end method

.method public bO()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.service.START"

    return-object v0
.end method

.method protected bP()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.service.ICommonService"

    return-object v0
.end method

.method protected bg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kg;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/kg$a;->bi(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kg;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic q(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ke;->bg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kg;

    move-result-object v0

    return-object v0
.end method
