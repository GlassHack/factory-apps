.class public Lcom/google/android/gms/location/reporting/ReportingClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final SETTINGS_CHANGED:Ljava/lang/String; = "com.google.android.gms.location.reporting.SETTINGS_CHANGED"


# instance fields
.field private final IP:Lcom/google/android/gms/internal/dy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectionCallbacks"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
    .param p3, "connectionFailedListener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/dy;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/dy;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingClient;->IP:Lcom/google/android/gms/internal/dy;

    return-void
.end method


# virtual methods
.method public cancelUpload(J)I
    .locals 1
    .param p1, "requestId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingClient;->IP:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/dy;->cancelUpload(J)I

    move-result v0

    return v0
.end method

.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingClient;->IP:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dy;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingClient;->IP:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dy;->disconnect()V

    return-void
.end method

.method public getReportingState(Landroid/accounts/Account;)Lcom/google/android/gms/location/reporting/ReportingState;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingClient;->IP:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dy;->getReportingState(Landroid/accounts/Account;)Lcom/google/android/gms/location/reporting/ReportingState;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingClient;->IP:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dy;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingClient;->IP:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dy;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingClient;->IP:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dy;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingClient;->IP:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dy;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingClient;->IP:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dy;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingClient;->IP:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dy;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public reportPlace(Landroid/accounts/Account;Lcom/google/android/gms/location/places/PlaceReport;)I
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "report"    # Lcom/google/android/gms/location/places/PlaceReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingClient;->IP:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/dy;->reportPlace(Landroid/accounts/Account;Lcom/google/android/gms/location/places/PlaceReport;)I

    move-result v0

    return v0
.end method

.method public requestUpload(Lcom/google/android/gms/location/reporting/UploadRequest;)Lcom/google/android/gms/location/reporting/UploadRequestResult;
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/location/reporting/UploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingClient;->IP:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dy;->requestUpload(Lcom/google/android/gms/location/reporting/UploadRequest;)Lcom/google/android/gms/location/reporting/UploadRequestResult;

    move-result-object v0

    return-object v0
.end method

.method public tryOptIn(Landroid/accounts/Account;)I
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingClient;->IP:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dy;->tryOptIn(Landroid/accounts/Account;)I

    move-result v0

    return v0
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingClient;->IP:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dy;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingClient;->IP:Lcom/google/android/gms/internal/dy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dy;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method
