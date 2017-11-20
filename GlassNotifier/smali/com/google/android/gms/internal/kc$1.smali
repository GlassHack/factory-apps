.class Lcom/google/android/gms/internal/kc$1;
.super Lcom/google/android/gms/internal/kd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/kc;->e(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Xe:Lcom/google/android/gms/internal/kc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kc;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kc$1;->Xe:Lcom/google/android/gms/internal/kc;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/kd$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ke;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kc$1;->a(Lcom/google/android/gms/internal/ke;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ke;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ke;->jh()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kg;

    new-instance v1, Lcom/google/android/gms/internal/kc$a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/kc$a;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/kg;->a(Lcom/google/android/gms/internal/kf;)V

    return-void
.end method
