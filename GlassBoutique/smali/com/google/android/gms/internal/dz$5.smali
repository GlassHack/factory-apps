.class Lcom/google/android/gms/internal/dz$5;
.super Lcom/google/android/gms/location/reporting/ReportingServices$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dz;->reportPlace(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/accounts/Account;Lcom/google/android/gms/location/places/PlaceReport;)Lcom/google/android/gms/common/api/PendingResult;
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
.field final synthetic HS:Lcom/google/android/gms/location/places/PlaceReport;

.field final synthetic Jf:Landroid/accounts/Account;

.field final synthetic Jg:Lcom/google/android/gms/internal/dz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dz;Landroid/accounts/Account;Lcom/google/android/gms/location/places/PlaceReport;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dz$5;->Jg:Lcom/google/android/gms/internal/dz;

    iput-object p2, p0, Lcom/google/android/gms/internal/dz$5;->Jf:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/gms/internal/dz$5;->HS:Lcom/google/android/gms/location/places/PlaceReport;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dz$5;->a(Lcom/google/android/gms/internal/dy;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/dy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/dz$5;->Jf:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/gms/internal/dz$5;->HS:Lcom/google/android/gms/location/places/PlaceReport;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/dy;->a(Landroid/accounts/Account;Lcom/google/android/gms/location/places/PlaceReport;)I

    move-result v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/android/gms/internal/dz;->access$200(I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/dz$5;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dz$5;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method
