.class Lcom/google/android/gms/internal/dz$1;
.super Lcom/google/android/gms/location/reporting/ReportingServices$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dz;->getReportingState(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/accounts/Account;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/reporting/ReportingServices$a",
        "<",
        "Lcom/google/android/gms/location/reporting/Reporting$ReportingStateResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Jf:Landroid/accounts/Account;

.field final synthetic Jg:Lcom/google/android/gms/internal/dz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dz;Landroid/accounts/Account;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dz$1;->Jg:Lcom/google/android/gms/internal/dz;

    iput-object p2, p0, Lcom/google/android/gms/internal/dz$1;->Jf:Landroid/accounts/Account;

    invoke-direct {p0}, Lcom/google/android/gms/location/reporting/ReportingServices$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected B(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/reporting/Reporting$ReportingStateResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/dz$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/dz$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/location/reporting/ReportingState;)V

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/dy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dz$1;->a(Lcom/google/android/gms/internal/dy;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/dy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/dz$1;->Jf:Landroid/accounts/Account;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/dy;->b(Landroid/accounts/Account;)Lcom/google/android/gms/location/reporting/ReportingState;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/dz$a;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->xB:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/dz$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/location/reporting/ReportingState;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/dz$1;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dz$1;->B(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/reporting/Reporting$ReportingStateResult;

    move-result-object v0

    return-object v0
.end method
