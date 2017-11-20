.class public Lcom/google/android/gms/internal/js;
.super Lcom/google/android/gms/common/internal/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/i",
        "<",
        "Lcom/google/android/gms/internal/jt;",
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

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

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

    new-instance v0, Lcom/google/android/gms/common/internal/g;

    const/16 v1, 0x2b

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/g;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/js;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/g;->bn(Ljava/lang/String;)Lcom/google/android/gms/common/internal/g;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/common/internal/q;->a(Lcom/google/android/gms/common/internal/p;Lcom/google/android/gms/common/internal/g;)V

    return-void
.end method

.method protected aW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jt;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/jt$a;->aX(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jt;

    move-result-object v0

    return-object v0
.end method

.method protected bO()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.download.START"

    return-object v0
.end method

.method protected bP()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.download.internal.IDownloadService"

    return-object v0
.end method

.method protected synthetic q(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/js;->aW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jt;

    move-result-object v0

    return-object v0
.end method
