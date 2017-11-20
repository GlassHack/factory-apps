.class Lcom/google/android/gms/internal/dz$3;
.super Lcom/google/android/gms/location/reporting/ReportingServices$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dz;->requestUpload(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/reporting/UploadRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/reporting/ReportingServices$a",
        "<",
        "Lcom/google/android/gms/location/reporting/Reporting$ReportingUploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Jg:Lcom/google/android/gms/internal/dz;

.field final synthetic Jh:Lcom/google/android/gms/location/reporting/UploadRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/location/reporting/UploadRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dz$3;->Jg:Lcom/google/android/gms/internal/dz;

    iput-object p2, p0, Lcom/google/android/gms/internal/dz$3;->Jh:Lcom/google/android/gms/location/reporting/UploadRequest;

    invoke-direct {p0}, Lcom/google/android/gms/location/reporting/ReportingServices$a;-><init>()V

    return-void
.end method


# virtual methods
.method public C(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/reporting/Reporting$ReportingUploadResult;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/dz$b;

    const-wide/16 v1, -0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/dz$b;-><init>(Lcom/google/android/gms/common/api/Status;J)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dz$3;->a(Lcom/google/android/gms/internal/dy;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/dy;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/dz$3;->Jh:Lcom/google/android/gms/location/reporting/UploadRequest;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/dy;->a(Lcom/google/android/gms/location/reporting/UploadRequest;)Lcom/google/android/gms/location/reporting/UploadRequestResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/dz$b;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/location/reporting/UploadRequestResult;->getResultCode()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/dz;->access$100(I)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/location/reporting/UploadRequestResult;->getRequestId()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/dz$b;-><init>(Lcom/google/android/gms/common/api/Status;J)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/dz$3;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dz$3;->C(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/reporting/Reporting$ReportingUploadResult;

    move-result-object v0

    return-object v0
.end method
