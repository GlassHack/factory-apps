.class public Lcom/google/android/gms/internal/dy;
.super Lcom/google/android/gms/common/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c",
        "<",
        "Lcom/google/android/gms/internal/dw;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 6

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(Landroid/accounts/Account;Lcom/google/android/gms/location/places/PlaceReport;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dy;->V()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dy;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dw;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/dw;->reportPlace(Landroid/accounts/Account;Lcom/google/android/gms/location/places/PlaceReport;)I

    move-result v0

    return v0
.end method

.method a(Lcom/google/android/gms/location/reporting/UploadRequest;)Lcom/google/android/gms/location/reporting/UploadRequestResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dy;->V()V

    invoke-virtual {p1}, Lcom/google/android/gms/location/reporting/UploadRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dy;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/dw;->requestUpload(Lcom/google/android/gms/location/reporting/UploadRequest;)Lcom/google/android/gms/location/reporting/UploadRequestResult;

    move-result-object v0

    return-object v0
.end method

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/i;->c(Lcom/google/android/gms/common/internal/h;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected ag(Landroid/os/IBinder;)Lcom/google/android/gms/internal/dw;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/dw$a;->af(Landroid/os/IBinder;)Lcom/google/android/gms/internal/dw;

    move-result-object v0

    return-object v0
.end method

.method b(Landroid/accounts/Account;)Lcom/google/android/gms/location/reporting/ReportingState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dy;->V()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dy;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/dw;->getReportingState(Landroid/accounts/Account;)Lcom/google/android/gms/location/reporting/ReportingState;

    move-result-object v0

    return-object v0
.end method

.method c(Landroid/accounts/Account;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dy;->V()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dy;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/dw;->tryOptIn(Landroid/accounts/Account;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/OptInResult;->sanitize(I)I

    move-result v0

    return v0
.end method

.method public cancelUpload(J)I
    .locals 2
    .param p1, "requestId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/dy;->j(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public getReportingState(Landroid/accounts/Account;)Lcom/google/android/gms/location/reporting/ReportingState;
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dy;->b(Landroid/accounts/Account;)Lcom/google/android/gms/location/reporting/ReportingState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method protected getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.reporting.internal.IReportingService"

    return-object v0
.end method

.method protected getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.reporting.service.START"

    return-object v0
.end method

.method protected synthetic i(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dy;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/internal/dw;

    move-result-object v0

    return-object v0
.end method

.method j(J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dy;->V()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dy;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dw;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/dw;->i(J)I

    move-result v0

    return v0
.end method

.method public reportPlace(Landroid/accounts/Account;Lcom/google/android/gms/location/places/PlaceReport;)I
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "report"    # Lcom/google/android/gms/location/places/PlaceReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/dy;->a(Landroid/accounts/Account;Lcom/google/android/gms/location/places/PlaceReport;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestUpload(Lcom/google/android/gms/location/reporting/UploadRequest;)Lcom/google/android/gms/location/reporting/UploadRequestResult;
    .locals 2
    .param p1, "request"    # Lcom/google/android/gms/location/reporting/UploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dy;->a(Lcom/google/android/gms/location/reporting/UploadRequest;)Lcom/google/android/gms/location/reporting/UploadRequestResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public tryOptIn(Landroid/accounts/Account;)I
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dy;->c(Landroid/accounts/Account;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x9

    goto :goto_0
.end method
