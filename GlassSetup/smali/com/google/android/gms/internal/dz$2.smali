.class Lcom/google/android/gms/internal/dz$2;
.super Lcom/google/android/gms/location/reporting/ReportingServices$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dz;->tryOptIn(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/accounts/Account;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/reporting/ReportingServices$a",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Jf:Landroid/accounts/Account;

.field final synthetic Jg:Lcom/google/android/gms/internal/dz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dz;Landroid/accounts/Account;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dz$2;->Jg:Lcom/google/android/gms/internal/dz;

    iput-object p2, p0, Lcom/google/android/gms/internal/dz$2;->Jf:Landroid/accounts/Account;

    invoke-direct {p0}, Lcom/google/android/gms/location/reporting/ReportingServices$a;-><init>()V

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

    check-cast p1, Lcom/google/android/gms/internal/dy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dz$2;->a(Lcom/google/android/gms/internal/dy;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/dy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/dz$2;->Jf:Landroid/accounts/Account;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/dy;->c(Landroid/accounts/Account;)I

    move-result v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/android/gms/internal/dz;->di(I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/dz$2;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dz$2;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method
