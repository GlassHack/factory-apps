.class public Lcom/google/android/gms/internal/jk;
.super Lcom/google/android/gms/common/internal/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/i",
        "<",
        "Lcom/google/android/gms/internal/jm;",
        ">;"
    }
.end annotation


# instance fields
.field private final Sj:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/jk;->Sj:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/internal/q;Lcom/google/android/gms/common/internal/i$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const v1, 0x675cf0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/q;->s(Lcom/google/android/gms/common/internal/p;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/jl;Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->jh()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/jm;->a(Lcom/google/android/gms/internal/jl;Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    return-void
.end method

.method protected aR(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jm;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/jm$a;->aT(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jm;

    move-result-object v0

    return-object v0
.end method

.method protected bO()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.clearcut.service.START"

    return-object v0
.end method

.method protected bP()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    return-object v0
.end method

.method protected ie()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method protected synthetic q(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jk;->aR(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jm;

    move-result-object v0

    return-object v0
.end method
